let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      identifier = { name = "java-bridge"; version = "0.20130606"; };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "";
      url = "";
      synopsis = "Bindings to the JNI and a high level interface generator.";
      description = "This package offers bindings to the\n/Java Native Interface/ and a high level interface\ngenerator.\n\n[@low level bindings to the JNI@]\nThe low level bindings are located in\n\"Foreign.Java.JNI.Safe\" and \"Foreign.Java.JNI.Unsafe\".\nWhen using these bindings you will have to deal with\npointers and manage global references manually.\n\n[@medium level interface@]\nThe medium level interface is located in\n\"Foreign.Java\". It offers an abstraction over the JNI,\ni.e. you will not have to deal with pointers\nexplicitly nor do you need to manually do conversions\nbetween native types and Haskell types.\nAlso references will automatically be released by\nthe Haskell runtime when no longer needed. You will\nstill need to manually lookup classes and methods in\norder to use them.\n\n[@high level bindings generator@]\nYou can also generate high level bindings using the\ntools @j2hs@ and @hs2j@ that come along with this\npackage. The tools works in both directions, i.e. you\ncan generate glue code to use existing Java libraries\nfrom within Haskell as well as to use Haskell from\nwithin Java. This is the most convenient way to deal\nwith a Java library.\n\n\n>>> INSTALLATION / USAGE\n\nIt should suffice to do @cabal install@ (or\n@cabal install java-bridge@ when installing from\nhackageDB). /You need to have a JDK installed prior to\ninstalling this library/.\n\nSetup will try to find the location of your java\ninstallation automatically. This is needed in order to\nload @libjvm@. Note that this library is loaded\ndynamically, which  means that linking errors might not\nshow up during installation.\n\nYou can specify the location of @libjvm@ manually using\nthe environment variable @FFIJNI_LIBJVM@. This\nenvironment variable is consulted by @Setup.hs@ as well\nas by the library each time @libjvm@ is loaded - which\nmeans that you can override the path to @libjvm@ at any\ntime. The function @getCompiledLibjvmPath@ in\n\"Foreign.Java.JNI.Safe\" will tell you what path to\n@libjvm@ has been set during compilation of the library.\n\n\n>>> FUN WITH (cabal-) FLAGS\n\nThe following cabal flags are available to you for\nconfiguring your installation:\n\n[@ONLY_CORE@]\nBuild only the Core Modules which offer a\ndirect binding to the Java Native Interface.\nThe core modules are \"Foreign.Java.JNI\",\n\"Foreign.Java.JNI.Safe\",\nand \"Foreign.Java.JNI.Unsafe\".\nThis implies @NO_TOOLS@.\nDefaults to @False@.\n\n[@NO_TOOLS@]\nDo not build the @j2hs@ and @hs2j@ executables.\nDefaults to @False@.\n\n[@DEBUG@]\nEnable a debug build. Defaults to @False@.\n\n[@OSX_GUI@]\nBuild the library with special support for\nCocoa on Mac OS X (you will not be able to\nuse AWT or Swing without). Defaults to @True@\non Darwin (OS X).\n\n[@OSX_FRAMEWORK@]\nUse the JavaVM framework on MacOS X instead\nof loading the dynamic library. Defaults to\n@False@. Enable this flag if building on your\nOS X machine fails. Defaults to @False@.\n\n[@EXAMPLES@]\nBuild a set of examples. They are prefixed\nwith @java-@ and located along your haskell\nexecutables. Defaults to @False@.\n\nUse for example\n@cabal install -f OSX_FRAMEWORK -f EXAMPLES@\nor @cabal configure -f DEBUG@.\n\n\n>>> HACKING\n\nSee @HACKING.txt@ and @ISSUES.txt@ in the tar.gz-package.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ] ++ (pkgs.lib).optionals (!flags.only_core) [
          (hsPkgs."hinduce-missingh" or (buildDepError "hinduce-missingh"))
          (hsPkgs."cpphs" or (buildDepError "cpphs"))
          (hsPkgs."strings" or (buildDepError "strings"))
          (hsPkgs."multimap" or (buildDepError "multimap"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ]) ++ (if system.isOsx
          then [ (hsPkgs."unix" or (buildDepError "unix")) ]
          else (pkgs.lib).optional (system.isLinux) (hsPkgs."unix" or (buildDepError "unix")));
        frameworks = (pkgs.lib).optionals (system.isOsx) ((pkgs.lib).optional (flags.osx_gui) (pkgs."Cocoa" or (sysDepError "Cocoa")) ++ (pkgs.lib).optional (flags.osx_framework) (pkgs."JavaVM" or (sysDepError "JavaVM")));
        };
      exes = {
        "j2hs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."java-bridge" or (buildDepError "java-bridge"))
            ] ++ (pkgs.lib).optionals (!flags.only_core) ((pkgs.lib).optionals (!flags.no_tools) [
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."strings" or (buildDepError "strings"))
            (hsPkgs."multimap" or (buildDepError "multimap"))
            (hsPkgs."names" or (buildDepError "names"))
            (hsPkgs."named-records" or (buildDepError "named-records"))
            (hsPkgs."bimap" or (buildDepError "bimap"))
            (hsPkgs."hint" or (buildDepError "hint"))
            ]);
          };
        "h2js" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."java-bridge" or (buildDepError "java-bridge"))
            ] ++ (pkgs.lib).optionals (!flags.only_core) ((pkgs.lib).optionals (!flags.no_tools) [
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."strings" or (buildDepError "strings"))
            (hsPkgs."multimap" or (buildDepError "multimap"))
            (hsPkgs."names" or (buildDepError "names"))
            (hsPkgs."named-records" or (buildDepError "named-records"))
            (hsPkgs."bimap" or (buildDepError "bimap"))
            (hsPkgs."hint" or (buildDepError "hint"))
            ]);
          };
        "java-calculator" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."java-bridge" or (buildDepError "java-bridge"))
            ];
          };
        "java-system-properties" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."java-bridge" or (buildDepError "java-bridge"))
            ];
          };
        };
      };
    }