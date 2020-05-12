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
      specVersion = "1.6";
      identifier = { name = "simple-css"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "";
      url = "";
      synopsis = "simple binding of css and html ";
      description = "Library binds css and html. It takes notion of /html for content, css for styling/ to extreme.\nThere are functions to build 'styling tree' and html elements can be placed only in the lists of the tree.\nHtml elements can be groupped with 'div', 'span' or 'a' tags and styled with subset of css.\nResult of the programm is string of css  code and list of html elements.\nModule \"SimpleCss\" contains core functions of the library and \"SimpleCss.Tricks\" translates some\ncss tricks i've found in the web.\nSee 'example/Main.hs' to get started";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."language-css" or (errorHandler.buildDepError "language-css"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          ];
        buildable = true;
        };
      };
    }