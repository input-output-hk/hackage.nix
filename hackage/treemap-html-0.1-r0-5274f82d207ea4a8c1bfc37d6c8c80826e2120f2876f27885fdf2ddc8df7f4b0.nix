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
      identifier = { name = "treemap-html"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
      author = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
      homepage = "http://rampa.sk/static/treemap-html.html";
      url = "";
      synopsis = "Generates HTML for Data.Tree as TreeMap";
      description = "Generates HTML for Data.Tree as TreeMap which\nis possible explore directly in browser because\nof small javascript code included.\nEach node is displayed as white box without\nany nested boxes inside.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."html" or (errorHandler.buildDepError "html"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
        ];
        buildable = true;
      };
    };
  }