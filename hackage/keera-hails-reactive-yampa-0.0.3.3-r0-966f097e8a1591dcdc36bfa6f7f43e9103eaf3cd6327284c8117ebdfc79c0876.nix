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
      specVersion = "1.2";
      identifier = {
        name = "keera-hails-reactive-yampa";
        version = "0.0.3.3";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://www.keera.es/blog/community/";
      url = "";
      synopsis = "Haskell on Rails - FRP Yampa Signal Functions as RVs";
      description = "Yampa-driven Functional Reactive Signal Functions,\nas reactive values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."keera-hails-reactivevalues" or (errorHandler.buildDepError "keera-hails-reactivevalues"))
          (hsPkgs."keera-callbacks" or (errorHandler.buildDepError "keera-callbacks"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
          ];
        buildable = true;
        };
      };
    }