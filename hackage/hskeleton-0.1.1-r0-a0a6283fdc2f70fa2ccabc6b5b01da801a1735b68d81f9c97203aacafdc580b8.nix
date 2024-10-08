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
      identifier = { name = "hskeleton"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "see LICENSE";
      maintainer = "Robin Green <greenrd@greenrd.org>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Skeleton for new Haskell programs";
      description = "Currently, this just handles --help and --version arguments for you.\nIn future, it may do more.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
        ];
        buildable = true;
      };
    };
  }