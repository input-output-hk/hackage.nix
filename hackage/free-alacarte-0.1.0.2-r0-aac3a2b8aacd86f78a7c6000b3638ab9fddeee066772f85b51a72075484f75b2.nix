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
      specVersion = "1.12";
      identifier = { name = "free-alacarte"; version = "0.1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Josep Bigorra <jjbigorra@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Free monads based on intuitions from the Data types à la Carte.             ";
      description = "Free monads based on intuitions from the Data types à la Carte paper. Combine functors and make embedded DSLs in Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }