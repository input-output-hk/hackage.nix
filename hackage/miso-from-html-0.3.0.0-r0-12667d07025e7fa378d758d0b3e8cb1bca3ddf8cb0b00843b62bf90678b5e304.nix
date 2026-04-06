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
      specVersion = "3.0";
      identifier = { name = "miso-from-html"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) David Johnson 2025";
      maintainer = "code@dmj.io";
      author = "David Johnson";
      homepage = "";
      url = "";
      synopsis = "Convert HTML to miso View syntax";
      description = "HTML parser that pretty prints to a Miso View";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."html-parse" or (errorHandler.buildDepError "html-parse"))
          (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "miso-from-html" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."miso-from-html" or (errorHandler.buildDepError "miso-from-html"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "app" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            (hsPkgs."miso-from-html" or (errorHandler.buildDepError "miso-from-html"))
            (hsPkgs."fourmolu" or (errorHandler.buildDepError "fourmolu"))
          ];
          buildable = true;
        };
      };
    };
  }