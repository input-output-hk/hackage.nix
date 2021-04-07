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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "reflex-localize-dom"; version = "1.0.3.0"; };
      license = "MIT";
      copyright = "2019 ATUM SOLUTIONS AG";
      maintainer = "- Anton Gushcha <ncrashed@gmail.com>\n- Aminion <>\n- Vladimir Krutkin <krutkinvs@gmail.com>\n- Levon Oganyan <lemarwin42@protonmail.com>";
      author = "- Anton Gushcha\n- Aminion\n- Vladimir Krutkin\n- Levon Oganyan";
      homepage = "https://github.com/hexresearch/ergvein";
      url = "";
      synopsis = "Helper widgets for reflex-localize";
      description = "Library provides helpers for dynamic strings that depends on current selected language.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."reflex-dom" or (errorHandler.buildDepError "reflex-dom"))
          (hsPkgs."reflex-localize" or (errorHandler.buildDepError "reflex-localize"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "reflex-localize-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-dom" or (errorHandler.buildDepError "reflex-dom"))
            (hsPkgs."reflex-localize" or (errorHandler.buildDepError "reflex-localize"))
            (hsPkgs."reflex-localize-dom" or (errorHandler.buildDepError "reflex-localize-dom"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }