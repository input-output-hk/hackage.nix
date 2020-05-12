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
      identifier = { name = "rawfilepath"; version = "0.2.3"; };
      license = "Apache-2.0";
      copyright = "2016 XT";
      maintainer = "e@xtendo.org";
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
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rawfilepath" or (errorHandler.buildDepError "rawfilepath"))
            ];
          buildable = true;
          };
        };
      };
    }