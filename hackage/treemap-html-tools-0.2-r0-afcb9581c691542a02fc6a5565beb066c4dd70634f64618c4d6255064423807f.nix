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
    flags = { testing = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "treemap-html-tools"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
      author = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
      homepage = "http://rampa.sk/static/treemap-html.html";
      url = "";
      synopsis = "Treemap related commands for producing foldable TreeMap HTML.";
      description = "Contains various commands for TreeMap generation,\nfor example dirmap produces the foldable treemap for\ngiven directory tree structure.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."treemap-html" or (errorHandler.buildDepError "treemap-html"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
        ];
        buildable = true;
      };
      exes = {
        "dirmap" = { buildable = true; };
        "xml2treemap" = { buildable = true; };
      };
    };
  }