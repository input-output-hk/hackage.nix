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
      specVersion = "1.18";
      identifier = { name = "gemmula"; version = "1.0.1"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Sena <jn-sena@proton.me>";
      author = "Sena <jn-sena@proton.me>";
      homepage = "https://codeberg.org/sena/gemmula";
      url = "";
      synopsis = "A tiny Gemtext parser";
      description = "gemmula is a tiny and functional Gemtext (unofficially text/gemini)\nparser that aims to parse a Gemtext document from and back to Text,\naccording to the Section 5 of the Gemini Protocol specification at\n<https://geminiprotocol.net/docs/specification.gmi>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "gemmulae-probatio" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."gemmula" or (errorHandler.buildDepError "gemmula"))
          ];
          buildable = true;
        };
      };
    };
  }