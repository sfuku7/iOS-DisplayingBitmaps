.SUFFIXES: .java .m

# configurations
SHARED_SOURCE_DIR = android/Application/src/shared/java/
STUB_SOURCE_DIR = stub-classes/
TRANSLATED_DIR = ios/translated/
BUILD_DIR = build

LIBNAME = libdisplaybitmaps.a

# Change to where distribution was unzipped.
#J2OBJC_DISTRIBUTION = /your/distribution/dir
J2OBJC = $(J2OBJC_DISTRIBUTION)/j2objc
J2OBJCC = $(J2OBJC_DISTRIBUTION)/j2objcc



# functions
define all-java-files-under
$(shell find $(1) -type f -name "*.java")
endef

# all Java files
SHARED_JAVA_SOURCES = $(call all-java-files-under,$(SHARED_SOURCE_DIR))
STUB_JAVA_SOURCES = $(call all-java-files-under,$(STUB_SOURCE_DIR))

# Objective-C files
OBJC_SOURCES  = $(patsubst $(SHARED_SOURCE_DIR)%.java,$(TRANSLATED_DIR)%.m,$(SHARED_JAVA_SOURCES))
OBJC_SOURCES += $(patsubst $(STUB_SOURCE_DIR)%.java,$(TRANSLATED_DIR)%.m,$(STUB_JAVA_SOURCES))
OBJC_HEADERS  = $(patsubst $(SHARED_SOURCE_DIR)%.java,$(TRANSLATED_DIR)%.h,$(SHARED_JAVA_SOURCES))
OBJC_HEADERS += $(patsubst $(STUB_SOURCE_DIR)%.java,$(TRANSLATED_DIR)%.h,$(STUB_JAVA_SOURCES))

# object files
OBJECTS  = $(patsubst $(SHARED_SOURCE_DIR)%.java,$(BUILD_DIR)%.o,$(SHARED_JAVA_SOURCES))
OBJECTS += $(patsubst $(STUB_SOURCE_DIR)%.java,$(BUILD_DIR)%.o,$(STUB_JAVA_SOURCES))

RESULT = mainclass

# targets
default: $(LIBNAME)

$(LIBNAME): translate $(BUILD_DIR) $(OBJECTS)
	libtool -static -o $@ $(OBJECTS)

translate: $(TRANSLATED_DIR) $(OBJC_SOURCES) $(OBJC_HEADERS)

clean:
	@rm -rf $(RESULT) $(BUILD_DIR) $(TRANSLATED_DIR)


# internal rules
$(TRANSLATED_DIR)/%.m $(TRANSLATED_DIR)/%.h: $(SHARED_SOURCE_DIR)/%.java
	$(J2OBJC) -sourcepath $(SHARED_SOURCE_DIR):$(STUB_SOURCE_DIR) -d $(TRANSLATED_DIR) $?

$(TRANSLATED_DIR)/%.m $(TRANSLATED_DIR)/%.h: $(STUB_SOURCE_DIR)/%.java
	$(J2OBJC) -sourcepath $(STUB_SOURCE_DIR) -d $(TRANSLATED_DIR) $?

$(BUILD_DIR)/%.o: $(TRANSLATED_DIR)/%.m
	mkdir -p $(dir $@)
	$(J2OBJCC) -I$(TRANSLATED_DIR) -c $? -o $@

$(BUILD_DIR) $(TRANSLATED_DIR):
	@mkdir $@
