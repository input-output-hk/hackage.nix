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
      specVersion = "2.2";
      identifier = { name = "castagnoli"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/castagnoli";
      url = "";
      synopsis = "Portable CRC-32C";
      description = "Portable implementation of CRC-32C.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."castagnoli" or (errorHandler.buildDepError "castagnoli"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
          buildable = true;
        };
      };
    };
  }