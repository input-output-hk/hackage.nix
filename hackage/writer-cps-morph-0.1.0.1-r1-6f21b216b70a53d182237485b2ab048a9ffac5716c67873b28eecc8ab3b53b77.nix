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
      identifier = { name = "writer-cps-morph"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/writer-cps-morph#readme";
      url = "";
      synopsis = "MFunctor instance for CPS style WriterT and RWST";
      description = "MFunctor instance for CPS style WriterT and RWST";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."writer-cps-transformers" or (errorHandler.buildDepError "writer-cps-transformers"))
          ];
        buildable = true;
        };
      };
    }