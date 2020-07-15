{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tini"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "";
      url = "";
      synopsis = "Tiny INI file and configuration library with a minimal dependency footprint.";
      description = "This library provides tools for working with INI-like configuration files.\nUnlike most other INI libraries, it is not blazing fast or built with\ncutting-edge libraries. Instead, it assumes that you are using INI-like\nconfiguration files because you want something simple and lightweight.\n\nTini provides the following features:\n\n* A simple interface to INI configuration: reading/writing an INI object\nobject to/from files and getting/setting/removing its values.\n* Automatic de/serialization of lists, optional values and base types.\n* High-level generic configuration type library built on top, freeing you\nfrom ever having to think about how you interact with your INI files.\n* Certified bloat-free: only depends on @base@.\n* Small and auditable: <400 lines of code excluding documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "tini-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tini" or (errorHandler.buildDepError "tini"))
            ];
          buildable = true;
          };
        };
      };
    }