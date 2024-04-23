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
      identifier = { name = "pandoc-columns"; version = "0.2.0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020-2023 Amy de Buitléir";
      maintainer = "amy@nualeargais.ie";
      author = "Amy de Buitléir";
      homepage = "https://github.com/mhwombat/pandoc-columns";
      url = "";
      synopsis = "A pandoc filter that provides a Markdown extension for columns.";
      description = "For more information and a tutorial on how to use this package,\nplease see the README at <https://github.com/mhwombat/pandoc-columns#readme>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
        ];
        buildable = true;
      };
      exes = {
        "pandoc-columns" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."pandoc-columns" or (errorHandler.buildDepError "pandoc-columns"))
          ];
          buildable = true;
        };
      };
    };
  }