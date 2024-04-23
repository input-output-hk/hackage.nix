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
      specVersion = "1.6";
      identifier = { name = "monad-supply"; version = "0.7"; };
      license = "MIT";
      copyright = "";
      maintainer = "Geoff Hulette <geoff@hulette.net>";
      author = "Geoff Hulette and unknown HaskellWiki contributor(s).";
      homepage = "";
      url = "";
      synopsis = "Stateful supply monad.";
      description = "Support for computations which consume values from a (possibly infinite) supply.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }