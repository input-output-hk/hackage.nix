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
      specVersion = "3.0";
      identifier = { name = "ascii-th"; version = "1.2.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/ascii-th";
      url = "";
      synopsis = "Template Haskell support for ASCII";
      description = "This package defines Template Haskell support for ASCII,\nincluding quasi-quoters for expressing ASCII strings.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ascii-case" or (errorHandler.buildDepError "ascii-case"))
          (hsPkgs."ascii-caseless" or (errorHandler.buildDepError "ascii-caseless"))
          (hsPkgs."ascii-char" or (errorHandler.buildDepError "ascii-char"))
          (hsPkgs."ascii-superset" or (errorHandler.buildDepError "ascii-superset"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "test-ascii-th" = {
          depends = [
            (hsPkgs."ascii-case" or (errorHandler.buildDepError "ascii-case"))
            (hsPkgs."ascii-caseless" or (errorHandler.buildDepError "ascii-caseless"))
            (hsPkgs."ascii-char" or (errorHandler.buildDepError "ascii-char"))
            (hsPkgs."ascii-superset" or (errorHandler.buildDepError "ascii-superset"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ascii-th" or (errorHandler.buildDepError "ascii-th"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }