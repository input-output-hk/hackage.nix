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
      identifier = { name = "edge"; version = "0.8.14"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "christopher.howard@frigidcode.com";
      author = "Christopher Howard";
      homepage = "http://frigidcode.com/code/edge";
      url = "";
      synopsis = "Top view space combat arcade game";
      description = "The Edge has always been a rough patch of interstellar\nspace filled with innumerable bad guys of every nefarious\nsort, and dangerous debris flying in every direction at\nhigh speeds. But now it has grown out of control and is\nthreatening to overflow into colonial space. Central\ncommand has decided to send in their newest super weapon,\nthe Mark II Lance fighter, piloted by their top ace pilot.\nGood luck commander!";
      buildType = "Simple";
      };
    components = {
      exes = {
        "edge" = {
          depends = [
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."wraparound" or (errorHandler.buildDepError "wraparound"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ALUT" or (errorHandler.buildDepError "ALUT"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }