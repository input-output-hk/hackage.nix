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
      specVersion = "1.10";
      identifier = { name = "convert-annotation"; version = "0.5.1.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright: (c) 2016 Gregory W. Schwartz";
      maintainer = "gsch@mail.med.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/convert-annotation#readme";
      url = "";
      synopsis = "Convert the annotation of a gene to another in a delimited file using a variety of different databases.";
      description = "Please see README.org";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."inline-r" or (errorHandler.buildDepError "inline-r"))
        ];
        buildable = true;
      };
      exes = {
        "convert-annotation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."convert-annotation" or (errorHandler.buildDepError "convert-annotation"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
            (hsPkgs."pipes-csv" or (errorHandler.buildDepError "pipes-csv"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."inline-r" or (errorHandler.buildDepError "inline-r"))
          ];
          buildable = true;
        };
      };
    };
  }