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
      specVersion = "1.12";
      identifier = { name = "pandoc-pyplot"; version = "1.0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Laurent P. René de Cotret";
      author = "Laurent P. René de Cotret";
      homepage = "https://github.com/LaurentRDC/pandoc-pyplot#readme";
      url = "";
      synopsis = "A Pandoc filter for including figures generated from Matplotlib";
      description = "A pandoc filter for including figures generated from Matplotlib. Keep the document and Python code in the same location. Output from Matplotlib is captured and included as a figure.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
        ];
        buildable = true;
      };
      exes = {
        "pandoc-pyplot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc-pyplot" or (errorHandler.buildDepError "pandoc-pyplot"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          ];
          buildable = true;
        };
      };
    };
  }