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
      identifier = { name = "pandoc-logic-proof"; version = "0.2.0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020-2023 Amy de Buitléir";
      maintainer = "amy@nualeargais.ie";
      author = "Amy de Buitléir";
      homepage = "https://github.com/mhwombat/pandoc-logic-proof";
      url = "";
      synopsis = "A pandoc filter that provides a Markdown extension for logic proofs.";
      description = "For more information and a tutorial on how to use this package,\nplease see the README at <https://github.com/mhwombat/pandoc-logic-proof#readme>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "pandoc-logic-proof" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."pandoc-logic-proof" or (errorHandler.buildDepError "pandoc-logic-proof"))
            ];
          buildable = true;
          };
        };
      };
    }