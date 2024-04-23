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
      identifier = { name = "WURFL"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007, alpheccar";
      maintainer = "misc@NOSPAMalpheccar.org";
      author = "alpheccar";
      homepage = "";
      url = "";
      synopsis = "Convert the WURFL file into a Parsec parser";
      description = "The WURLF file format (http://wurfl.sourceforge.net/) is not well adapted to the parsing of the user agent strings. It is useful to manage a database of mobile features.\nThe Convert module in this package (see test.hs) will convert the WURLF tree into another tree that can be used to generate a Parsec parser.\nThe Parsec parser can then be used with WURFLParser to quickly parse an user agent string. The infos extracted from WURLF are defined in WURFLType (MD data type). Nothing\nis preventing the lib from taking into account much more information from the WURLF file.\nThe conversion of wurlf.xml and compilation of the lib are very slow since the generated tree in WurflVar.h is a huge Haskell tree. But, once it is compiled, its use in another project should be\neasy. This module is very experimental.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
    };
  }