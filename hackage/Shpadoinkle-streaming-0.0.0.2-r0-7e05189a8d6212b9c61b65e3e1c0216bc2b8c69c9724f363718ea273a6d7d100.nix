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
      specVersion = "2.2";
      identifier = { name = "Shpadoinkle-streaming"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "morgan.a.s.thomas@gmail.com";
      author = "Morgan Thomas";
      homepage = "";
      url = "";
      synopsis = "Integration of the streaming library with Shpadoinkle continuations.";
      description = "Integration of the streaming library with Shpadoinkle continuations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Shpadoinkle" or (errorHandler.buildDepError "Shpadoinkle"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }