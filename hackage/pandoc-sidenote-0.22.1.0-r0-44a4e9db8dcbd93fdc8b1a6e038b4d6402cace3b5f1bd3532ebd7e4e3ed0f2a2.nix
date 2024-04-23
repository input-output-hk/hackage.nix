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
      identifier = { name = "pandoc-sidenote"; version = "0.22.1.0"; };
      license = "MIT";
      copyright = "2016 Jake Zimmerman";
      maintainer = "zimmerman.jake@gmail.com";
      author = "Jake Zimmerman";
      homepage = "https://github.com/jez/pandoc-sidenote#readme";
      url = "";
      synopsis = "Convert Pandoc Markdown-style footnotes into sidenotes";
      description = "This is a simple Pandoc filter to convert footnotes into a format that can be consumed by Tufte CSS. On the whole, this project weighs in at well under 100 lines of code. Check out SideNote.hs if you're curious how it works.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "pandoc-sidenote" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pandoc-sidenote" or (errorHandler.buildDepError "pandoc-sidenote"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }