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
      specVersion = "3.0";
      identifier = { name = "newline"; version = "0.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2023 Marseille Bouchard";
      maintainer = "zankoku.okuno@gmail.com";
      author = "Marseille Bouchard";
      homepage = "https://github.com/edemko/hs-newline";
      url = "";
      synopsis = "newline specifications as values";
      description = "Defines a Newline data type, which is essentially a non-empty string,\nbut with the intention of encoding a family of algorithms\nfor the detection and manipulation of lines of text.\nIn addition, a number of pattern synonyms are also provided,\nwhich offer a more self-documenting interface for specifying newlines.\n\nAlgorithms to split and merge text by line are also provided.\nThese are generalizations of Prelude's line/unline functions.\nThey are provided with Newline values to specify their exact behavior.\n\nAt the moment, little effort has been made to optimize the general line splitting algorithm,\nand many convenience functions are missing.\nThis is because such improvements are premature for my personal case,\nbut feel free to submit a PR for either.\nI'll want to make this package a central location for these tasks.\n\nThis package also contains algorithms to map lines into byte ranges for a file.\nThere is also an associated file format to serialize this data.\nSee the `Text.Newline.LineMap` module for this feature.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }