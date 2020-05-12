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
      identifier = { name = "arff"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Stefan Kersten 2008";
      maintainer = "Stefan Kersten";
      author = "Stefan Kersten";
      homepage = "http://code.haskell.org/~StefanKersten/code/arff";
      url = "";
      synopsis = "Generate Attribute-Relation File Format (ARFF) files";
      description = "Generate Attribute-Relation File Format (ARFF) files.\n\nARFF files are used by the WEKA data mining and machine\nlearning framework (<http://www.cs.waikato.ac.nz/~ml/weka/>)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
          (hsPkgs."bytestring-show" or (errorHandler.buildDepError "bytestring-show"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }