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
      identifier = { name = "pandoc-sidenote"; version = "0.19.0.0"; };
      license = "MIT";
      copyright = "2016 Jake Zimmerman";
      maintainer = "zimmerman.jake@gmail.com";
      author = "Jake Zimmerman";
      homepage = "https://github.com/jez/pandoc-sidenote#readme";
      url = "";
      synopsis = "Convert Pandoc Markdown-style footnotes into sidenotes";
      description = "Convert Pandoc Markdown-style footnotes into sidenotes";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-gen" or (errorHandler.buildDepError "monad-gen"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          ];
        buildable = true;
        };
      exes = {
        "pandoc-sidenote" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc-sidenote" or (errorHandler.buildDepError "pandoc-sidenote"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            ];
          buildable = true;
          };
        };
      };
    }