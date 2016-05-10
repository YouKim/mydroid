LINK_SOURCE=~/mydroid/android
LINK_TARGET=~/mydroid/eclipse_java

cd $LINK_SOURCE
mkdir -p $LINK_TARGET

find libcore -name '*.java' -exec cp -u --parents {} $LINK_TARGET  \;

find external/icu -name '*.java' -exec cp -u --parents {} $LINK_TARGET  \;
find external/protobuf -name '*.java' -exec cp -u --parents {} $LINK_TARGET  \;
find external/tagsoup -name '*.java' -exec cp -u --parents {} $LINK_TARGET  \;
find external/nist-sip -name '*.java' -exec cp -u --parents {} $LINK_TARGET  \;
find external/junit -name '*.java' -exec cp -u --parents {} $LINK_TARGET  \;
find external/hamcrest -name '*.java' -exec cp -u --parents {} $LINK_TARGET  \;
find external/guava -name '*.java' -exec cp -u --parents {} $LINK_TARGET  \;
find external/libphonenumber -name '*.java' -exec cp -u --parents {} $LINK_TARGET  \;
find external/lzma -name '*.java' -exec cp -u --parents {} $LINK_TARGET  \;
find external/jsr305 -name '*.java' -exec cp -u --parents {} $LINK_TARGET  \;
find external/apache-http -name '*.java' -exec cp -u --parents {} $LINK_TARGET  \;

find frameworks -name '*.java' -exec cp -u --parents {} $LINK_TARGET  \;

find out -name '*.java' -exec cp -u --parents {} $LINK_TARGET  \;

find out -name 'classes-jarjar.jar' -exec cp -u --parents {} $LINK_TARGET  \;

find . -wholename ./prebuilts*android-support-v*.jar -exec cp -u --parents {} $LINK_TARGET  \;

#find frameworks -name 'AndroidManifest.xml' -exec cp -u --parents {} $LINK_TARGET  \;

#find -name 'Android.mk' -exec cp -u --parents {} $LINK_TARGET  \;
