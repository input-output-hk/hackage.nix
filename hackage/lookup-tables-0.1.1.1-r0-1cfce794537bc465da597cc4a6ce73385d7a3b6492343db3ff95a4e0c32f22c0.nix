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
      identifier = { name = "lookup-tables"; version = "0.1.1.1"; };
      license = "ISC";
      copyright = "2015 Jacob McArthur";
      maintainer = "Jake.McArthur@gmail.com";
      author = "Jake McArthur";
      homepage = "http://hub.darcs.net/jmcarthur/lookup-tables/issues";
      url = "";
      synopsis = "Statically generate lookup tables using Template Haskell.";
      description = "This package provides a single Template Haskell\nfunction for memoizing a given function by\nstatically generating a lookup table.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "lookup-tables-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lookup-tables" or (errorHandler.buildDepError "lookup-tables"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }