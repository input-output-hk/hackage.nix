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
      identifier = { name = "reflex-dom-retractable"; version = "0.1.5.0"; };
      license = "MIT";
      copyright = "2019 ATUM SOLUTIONS AG";
      maintainer = "Anton Gushcha <ncrashed@protonmail.com>, Vladimir Krutkin <krutkinvs@gmail.com>";
      author = "Anton Gushcha, Aminion, Vladimir Krutkin, Levon Oganyan";
      homepage = "";
      url = "";
      synopsis = "Routing and retractable back button for reflex-dom";
      description = "Library that automates widget switches and back button retract stack. See README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ref-tf" or (errorHandler.buildDepError "ref-tf"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."reflex-dom" or (errorHandler.buildDepError "reflex-dom"))
        ];
        buildable = true;
      };
    };
  }