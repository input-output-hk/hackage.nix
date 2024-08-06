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
      identifier = { name = "gemmula"; version = "1.2.0"; };
      license = "LGPL-3.0-or-later";
      copyright = "(c) Sena 2024";
      maintainer = "contact@sena.pink";
      author = "Sena <contact@sena.pink>";
      homepage = "https://codeberg.org/sena/gemmula";
      url = "";
      synopsis = "a tiny gemtext parser";
      description = "gemmula is a tiny gemtext (unofficially @text/gemini@) parser from and back into\n`Text', attempting to be /mostly/ compliant with the\n[Gemini hypertext format specification](https://geminiprotocol.net/docs/gemtext-specification.gmi)\nwhile being somewhat practical.";
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
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."gemmula" or (errorHandler.buildDepError "gemmula"))
          ];
          buildable = true;
        };
      };
    };
  }