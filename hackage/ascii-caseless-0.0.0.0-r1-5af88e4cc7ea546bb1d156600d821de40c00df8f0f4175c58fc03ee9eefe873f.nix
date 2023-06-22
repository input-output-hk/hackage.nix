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
      identifier = { name = "ascii-caseless"; version = "0.0.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/ascii-caseless";
      url = "";
      synopsis = "ASCII character without an upper/lower case distinction";
      description = "This package defines a @Char@ type that has\n102 constructors: 128 ASCII characters minus 26 letters.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ascii-case" or (errorHandler.buildDepError "ascii-case"))
          (hsPkgs."ascii-char" or (errorHandler.buildDepError "ascii-char"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      tests = {
        "test-ascii-caseless" = {
          depends = [
            (hsPkgs."ascii-case" or (errorHandler.buildDepError "ascii-case"))
            (hsPkgs."ascii-char" or (errorHandler.buildDepError "ascii-char"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ascii-caseless" or (errorHandler.buildDepError "ascii-caseless"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }