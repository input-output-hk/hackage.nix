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
      identifier = { name = "pandoc-select-code"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020-2023 Amy de Buitléir";
      maintainer = "amy@nualeargais.ie";
      author = "Amy de Buitléir";
      homepage = "https://github.com/mhwombat/pandoc-select-code";
      url = "";
      synopsis = "Pandoc filter to extract only the code blocks.";
      description = "For more information and a tutorial on how to use this package,\nplease see the README at <https://github.com/mhwombat/pandoc-select-code#readme>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pandoc-select-code" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            ];
          buildable = true;
          };
        };
      };
    }