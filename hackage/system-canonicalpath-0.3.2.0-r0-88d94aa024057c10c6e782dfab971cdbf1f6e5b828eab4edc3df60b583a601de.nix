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
      identifier = { name = "system-canonicalpath"; version = "0.3.2.0"; };
      license = "MIT";
      copyright = "(c) Boris Buliga, 2014";
      maintainer = "Boris Buliga <d12frosted@icloud.com>";
      author = "Boris Buliga <d12frosted@icloud.com>";
      homepage = "https://github.com/d12frosted/CanonicalPath";
      url = "";
      synopsis = "Abstract data type for canonical paths with some utilities";
      description = "This library provides abstract data type named 'Filesystem.CanonicalPath.CanonicalPath' and some useful functions for working with it.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."basic-prelude" or (errorHandler.buildDepError "basic-prelude"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "canonicalpath_tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."basic-prelude" or (errorHandler.buildDepError "basic-prelude"))
            (hsPkgs."chell" or (errorHandler.buildDepError "chell"))
            (hsPkgs."system-canonicalpath" or (errorHandler.buildDepError "system-canonicalpath"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            ];
          buildable = true;
          };
        };
      };
    }