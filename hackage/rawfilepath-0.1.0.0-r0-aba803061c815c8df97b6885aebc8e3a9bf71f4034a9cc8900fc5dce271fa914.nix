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
      identifier = { name = "rawfilepath"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 XT";
      maintainer = "xtendo@protonmail.com";
      author = "XT";
      homepage = "https://github.com/xtendo-org/rawfilepath#readme";
      url = "";
      synopsis = "Use RawFilePath instead of FilePath";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "RawFilePath-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rawfilepath" or (errorHandler.buildDepError "rawfilepath"))
            ];
          buildable = true;
          };
        };
      };
    }