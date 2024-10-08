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
      identifier = { name = "NearContextAlgebra"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hahn@geoinfo.tuwien.ac.at";
      author = "Jürgen Hahn";
      homepage = "";
      url = "";
      synopsis = "Context Algebra of near";
      description = "Model of the concept \"near\" influenced by several contexts";
      buildType = "Simple";
    };
    components = {
      exes = {
        "NearContextAlgebra" = {
          depends = [
            (hsPkgs."ContextAlgebra" or (errorHandler.buildDepError "ContextAlgebra"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))
            (hsPkgs."multiset" or (errorHandler.buildDepError "multiset"))
          ];
          buildable = true;
        };
      };
    };
  }