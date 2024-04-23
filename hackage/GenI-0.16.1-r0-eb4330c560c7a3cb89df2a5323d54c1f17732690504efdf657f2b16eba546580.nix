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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "GenI"; version = "0.16.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "eric.kow@loria.fr";
      author = "Carlos Areces and Eric Kow";
      homepage = "http://trac.loria.fr/~geni";
      url = "";
      synopsis = "A natural language generator (specifically, an FB-LTAG surface realiser)";
      description = "A natural language generator (specifically, an FB-LTAG surface realiser)";
      buildType = "Custom";
    };
    components = {
      exes = {
        "geni" = {
          depends = if flags.splitbase
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
              (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
              (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
              (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
              (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
              (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
              (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
              (hsPkgs."libGenI" or (errorHandler.buildDepError "libGenI"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
              (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
              (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
              (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
              (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
              (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
              (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
              (hsPkgs."libGenI" or (errorHandler.buildDepError "libGenI"))
            ];
          buildable = true;
        };
      };
    };
  }