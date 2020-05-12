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
      identifier = { name = "typesafe-precure"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Yuji Yamamoto";
      maintainer = "whosekiteneverfly@gmail.com";
      author = "Yuji Yamamoto";
      homepage = "https://github.com/igrep/typesafe-precure#readme";
      url = "";
      synopsis = "Type-safe transformations and purifications of PreCures (Japanese Battle Heroine)";
      description = "See README.md for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-skeleton" or (errorHandler.buildDepError "monad-skeleton"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "typesafe-precure-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typesafe-precure" or (errorHandler.buildDepError "typesafe-precure"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }