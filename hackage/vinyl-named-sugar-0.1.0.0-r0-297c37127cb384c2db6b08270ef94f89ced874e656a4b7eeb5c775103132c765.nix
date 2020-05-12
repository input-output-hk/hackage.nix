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
      identifier = { name = "vinyl-named-sugar"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Solonarv";
      maintainer = "nstamm@gmx.de";
      author = "Solonarv";
      homepage = "https://github.com/Solonarv/record-sugar#readme";
      url = "";
      synopsis = "Syntax sugar for vinyl records using overloaded labels.";
      description = "Provides @rec_ \\#foo fooVal \\#bar barVal@ syntax for constructing @vinyl@ records.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          ];
        buildable = true;
        };
      };
    }