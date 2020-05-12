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
      specVersion = "1.8";
      identifier = { name = "QuasiText"; version = "0.1.2.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eleventynine@gmail.com";
      author = "Mike Ledger";
      homepage = "https://github.com/mikeplus64/QuasiText";
      url = "";
      synopsis = "A QuasiQuoter for Text.";
      description = "A QuasiQuoter for interpolating values into Text strings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }