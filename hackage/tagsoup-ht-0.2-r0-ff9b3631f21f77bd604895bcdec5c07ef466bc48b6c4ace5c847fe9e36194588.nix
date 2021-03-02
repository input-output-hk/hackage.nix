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
      specVersion = "1.0";
      identifier = { name = "tagsoup-ht"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <tagsoup@henning-thielemann.de>";
      author = "Henning Thielemann <tagsoup@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/tagsoup-ht/";
      url = "";
      synopsis = "alternative parser for the tagsoup package";
      description = "TagSoup is a package for parsing and extracting information from (possibly malformed) HTML/XHTML documents.\nHere I present my own parser,\nwhich I find (of course) more comprehensible and easier to extend.\nIt also handles XML declarations and CDATA sections correctly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          ];
        buildable = true;
        };
      exes = {
        "tagsouptest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
            ];
          buildable = true;
          };
        "validate-tagsoup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
            ];
          buildable = true;
          };
        };
      };
    }