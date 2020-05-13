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
      identifier = { name = "HPDF"; version = "1.4.6"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007-2013, alpheccar.org";
      maintainer = "misc@NOSPAMalpheccar.org";
      author = "";
      homepage = "http://www.alpheccar.org";
      url = "";
      synopsis = "Generation of PDF documents";
      description = "A PDF library with support for several pages, page transitions, outlines, annotations, compression, colors, shapes, patterns, jpegs, fonts, typesetting ... Have a look at the \"Graphics.PDF.Documentation\" module to see how to use it. Or, download the package and look at the test.hs file in the Test folder. That file is giving an example of each feature.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }