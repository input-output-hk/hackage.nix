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
    flags = { optimized = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "range-set-list"; version = "0.0.4"; };
      license = "MIT";
      copyright = "Copyright (c) 2013 Oleg Grenrus";
      maintainer = "oleg.grenrus@iki.fi";
      author = "Oleg Grenrus";
      homepage = "https://github.com/phadej/range-set-list";
      url = "";
      synopsis = "Memory efficient sets with continuous ranges of elements.";
      description = "Memory efficient sets with continuous ranges of elements. List based implementation. Interface mimics \"Data.Set\" interface where possible.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."range-set-list" or (errorHandler.buildDepError "range-set-list"))
            ];
          buildable = true;
          };
        };
      };
    }