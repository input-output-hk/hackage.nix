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
      specVersion = "1.12";
      identifier = { name = "rawfilepath"; version = "1.1.1"; };
      license = "Apache-2.0";
      copyright = "(C) 2016-2024 XT et al.";
      maintainer = "git@xtendo.org";
      author = "XT et al.";
      homepage = "https://github.com/xtendo-org/rawfilepath#readme";
      url = "";
      synopsis = "Use RawFilePath instead of FilePath";
      description = "A fast and safe API with high-level features on `RawFilePath`, instead of `FilePath`, to avoid the encoding issues or performance penalties. Please see `README.md`";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
      tests = {
        "RawFilePath-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."rawfilepath" or (errorHandler.buildDepError "rawfilepath"))
          ];
          buildable = true;
        };
      };
    };
  }