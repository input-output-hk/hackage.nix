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
      identifier = { name = "optparse-declarative"; version = "0.3.1"; };
      license = "MIT";
      copyright = "2020 Kazuki Okamoto (岡本和樹), (c) Hideyuki Tanaka 2015";
      maintainer = "tanaka.hideyuki@gmail.com, kazuki.okamoto@kakkun61.com";
      author = "Hideyuki Tanaka";
      homepage = "https://github.com/tanakh/optparse-declarative";
      url = "";
      synopsis = "Declarative command line option parser";
      description = "Declarative and easy to use command line option parser";
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