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
    flags = { noisy = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "typed-digits"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Arran Stewart";
      maintainer = "haskell-maintenance@arranstewart.info";
      author = "Arran Stewart";
      homepage = "https://github.com/arranstewart/hs-typed-digits#readme";
      url = "";
      synopsis = "Digits, indexed by their base at the type level";
      description = "Digits, indexed by their base at the type level.\n\nPlease see the README, for more details, available on GitHub at <https://github.com/arranstewart/hs-typed-digits#readme>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."nats" or (errorHandler.buildDepError "nats"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typed-digits" or (errorHandler.buildDepError "typed-digits"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typed-digits" or (errorHandler.buildDepError "typed-digits"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          ];
          buildable = true;
        };
      };
    };
  }