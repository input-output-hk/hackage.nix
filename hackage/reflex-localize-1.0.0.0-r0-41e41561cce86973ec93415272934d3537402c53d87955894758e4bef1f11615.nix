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
      identifier = { name = "reflex-localize"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "2019 ATUM SOLUTIONS AG";
      maintainer = "- Anton Gushcha <ncrashed@gmail.com>\n- Aminion <>\n- Vladimir Krutkin <krutkinvs@gmail.com>\n- Levon Oganyan";
      author = "- Anton Gushcha\n- Aminion\n- Vladimir Krutkin\n- Levon Oganyan";
      homepage = "https://github.com/hexresearch/ergvein";
      url = "";
      synopsis = "Localization library for reflex";
      description = "Library provides helpers for dynamic strings that depends on current selected language.\nSee also `reflex-localize-dom` for examples and DOM related helpers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."reflex-external-ref" or (errorHandler.buildDepError "reflex-external-ref"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }