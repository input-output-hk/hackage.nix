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
      identifier = { name = "sdp"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2019-2021 Andrey Mulik";
      maintainer = "work.a.mulik@gmail.com";
      author = "Andrey Mulik";
      homepage = "";
      url = "";
      synopsis = "Simple Data Processing";
      description = "SDP provides generalized interface for simple data operations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fmr" or (errorHandler.buildDepError "fmr"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          ];
        buildable = true;
        };
      };
    }