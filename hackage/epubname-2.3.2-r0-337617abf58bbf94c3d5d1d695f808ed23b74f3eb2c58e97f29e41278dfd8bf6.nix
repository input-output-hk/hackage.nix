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
      specVersion = "1.2";
      identifier = { name = "epubname"; version = "2.3.2"; };
      license = "BSD-3-Clause";
      copyright = "2008-2011 Dino Morelli ";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli ";
      homepage = "http://ui3.info/d/proj/epubname.html";
      url = "";
      synopsis = "Rename epub ebook files based on meta information";
      description = "Command-line utility for renaming epub ebook files\nbased on the OPF Package metadata.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "epubname" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."epub-metadata" or (errorHandler.buildDepError "epub-metadata"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          ];
          buildable = true;
        };
      };
    };
  }