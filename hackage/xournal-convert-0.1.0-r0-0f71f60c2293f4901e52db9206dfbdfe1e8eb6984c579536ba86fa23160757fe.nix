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
      specVersion = "1.8";
      identifier = { name = "xournal-convert"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/hxournal";
      url = "";
      synopsis = "convert utility for xoj files";
      description = "convert xoj files into various formats (SVG,SVG+index.html..) ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
          (hsPkgs."xournal-types" or (errorHandler.buildDepError "xournal-types"))
          (hsPkgs."xournal-parser" or (errorHandler.buildDepError "xournal-parser"))
          (hsPkgs."xournal-render" or (errorHandler.buildDepError "xournal-render"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          ];
        buildable = true;
        };
      exes = {
        "xournal-convert" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."xournal-convert" or (errorHandler.buildDepError "xournal-convert"))
            ];
          buildable = true;
          };
        };
      };
    }