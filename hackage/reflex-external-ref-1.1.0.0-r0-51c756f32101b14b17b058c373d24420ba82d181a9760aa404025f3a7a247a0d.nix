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
      identifier = { name = "reflex-external-ref"; version = "1.1.0.0"; };
      license = "MIT";
      copyright = "2019 ATUM SOLUTIONS AG";
      maintainer = "- Anton Gushcha <ncrashed@gmail.com>\n- Aminion <>\n- Vladimir Krutkin <krutkinvs@gmail.com>\n- Levon Oganyan";
      author = "- Anton Gushcha\n- Aminion\n- Vladimir Krutkin\n- Levon Oganyan";
      homepage = "https://github.com/hexresearch/ergvein";
      url = "";
      synopsis = "External reference with reactivity support";
      description = "The package provides you with `IORef` that has attached reflex `Event`. Each time\nthe variable changes the event fires. It is very useful for communication with\nexternal event sources or using it as environment level state.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
    };
  }