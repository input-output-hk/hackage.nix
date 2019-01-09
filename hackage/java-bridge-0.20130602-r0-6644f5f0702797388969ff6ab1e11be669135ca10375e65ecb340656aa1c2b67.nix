{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      only_core = false;
      no_tools = false;
      debug = false;
      osx_gui = true;
      osx_framework = false;
      examples = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "java-bridge"; version = "0.20130602"; };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "";
      url = "";
      synopsis = "Bindings to the JNI and a high level interface generator.";
      description = "This package offers bindings to the /Java Native Interface/\nand a high level interface generator.\n\n[@low level bindings to the JNI@]\nThe low level bindings are located in \"Foreign.Java.JNI.Safe\"\nand \"Foreign.Java.JNI.Unsafe\". When using these bindings you\nwill have to deal with pointers and manage global references\nmanually.\n\n[@medium level interface@]\nThe medium level interface is located in \"Foreign.Java\".\nIt offers an abstraction over the JNI, i.e. you will not\nhave to deal with pointers explicitly nor do you need to\nmanually do conversions between native types and Haskell\ntypes. Also references will automatically be released by\nthe Haskell runtime when no longer needed. You will still\nneed to manually lookup classes and methods in order to use\nthem.\n\n[@high level bindings generator@]\nYou can also generate high level bindings using the tools\n@j2hs@ and @hs2j@ that come along with this package. The tools\nworks in both directions, i.e. you can generate glue code to use\nexisting Java libraries from within Haskell as well as to use\nHaskell from within Java. This is the most convenient way\nto deal with a Java library.\n\n\n>>> INSTALLATION / USAGE\n\nIt should suffice to do @cabal install@ (or\n@cabal install java-bridge@ when installing from hackageDB).\n/You need to have a JDK installed prior to installing this library/.\n\nSetup will try to find the location of your java installation\nautomatically. This is needed in order to load @libjvm@.\nNote that this library is loaded dynamically, which\nmeans that linking errors might not show up during installation.\n\nYou can specify the location of @libjvm@ manually using the\nenvironment variable @FFIJNI_LIBJVM@. This environment variable\nis consulted by @Setup.hs@ as well as by the library each time\n@libjvm@ is loaded - which means that you can override the path to\n@libjvm@ at any time. The function @getCompiledLibjvmPath@ in\n\"Foreign.Java.JNI.Safe\" will tell you what path to @libjvm@ has\nbeen set during compilation of the library.\n\n\n>>> FUN WITH (cabal-) FLAGS\n\nThe following cabal flags are available to you for configuring\nyour installation:\n\n[@ONLY_CORE@]\nBuild only the Core Modules which offer a\ndirect binding to the Java Native Interface.\nThe core modules are \"Foreign.Java.JNI\",\n\"Foreign.Java.JNI.Safe\", and \"Foreign.Java.JNI.Unsafe\".\nThis implies @NO_TOOLS@.\nDefaults to @False@.\n\n[@NO_TOOLS@]\nDo not build the @j2hs@ and @hs2j@ executables.\nDefaults to @False@.\n\n[@DEBUG@]\nEnable a debug build. Defaults to @False@.\n\n[@OSX_GUI@]\nBuild the library with special support for\nCocoa on Mac OS X (you will not be able to\nuse AWT or Swing without). Defaults to @True@\non Darwin (OS X).\n\n[@OSX_FRAMEWORK@]\nUse the JavaVM framework on MacOS X instead\nof loading the dynamic library. Defaults to\n@False@. Enable this flag if building on your\nOS X machine fails. Defaults to @False@.\n\n[@EXAMPLES@]\nBuild a set of examples. They are prefixed\nwith @java-@ and located along your haskell\nexecutables. Defaults to @False@.\n\nUse for example @cabal install -f OSX_FRAMEWORK -f EXAMPLES@\nor @cabal configure -f DEBUG@.\n\n\n>>> HACKING\n\nSee @HACKING.txt@ and @ISSUES.txt@ in the tar.gz-package.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          ] ++ (pkgs.lib).optionals (!flags.only_core) [
          (hsPkgs.hinduce-missingh)
          (hsPkgs.cpphs)
          (hsPkgs.strings)
          (hsPkgs.multimap)
          (hsPkgs.mtl)
          (hsPkgs.syb)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          ]) ++ (if system.isOsx
          then [ (hsPkgs.unix) ]
          else (pkgs.lib).optional (system.isLinux) (hsPkgs.unix));
        frameworks = (pkgs.lib).optionals (system.isOsx) ((pkgs.lib).optional (flags.osx_gui) (pkgs."Cocoa") ++ (pkgs.lib).optional (flags.osx_framework) (pkgs."JavaVM"));
        };
      exes = {
        "j2hs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.java-bridge)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.syb)
            (hsPkgs.split)
            (hsPkgs.strings)
            (hsPkgs.multimap)
            (hsPkgs.names)
            (hsPkgs.named-records)
            (hsPkgs.bimap)
            (hsPkgs.hint)
            ];
          };
        "h2js" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.java-bridge)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.syb)
            (hsPkgs.split)
            (hsPkgs.strings)
            (hsPkgs.multimap)
            (hsPkgs.names)
            (hsPkgs.named-records)
            (hsPkgs.bimap)
            (hsPkgs.hint)
            ];
          };
        "java-calculator" = {
          depends = [ (hsPkgs.base) (hsPkgs.java-bridge) ];
          };
        "java-system-properties" = {
          depends = [ (hsPkgs.base) (hsPkgs.java-bridge) ];
          };
        };
      };
    }