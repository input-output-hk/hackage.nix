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
      identifier = { name = "quipper-language"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2019. All rights reserved.";
      maintainer = "selinger@mathstat.dal.ca";
      author = "Alexander S. Green, Peter LeFanu Lumsdaine,\nNeil J. Ross, Peter Selinger, Benoît Valiron";
      homepage = "http://www.mathstat.dal.ca/~selinger/quipper/";
      url = "";
      synopsis = "Quipper, an embedded functional programming language for quantum\ncomputation.";
      description = "Quipper is an embedded functional programming language for quantum\ncomputation. The quipper-language package provides the Quipper\nlanguage. You might also want quipper-libraries to get the Quipper\nlibraries, quipper-tools to get some standalone tools, and\nquipper-algorithms to get a collection of pre-implemented quantum\nalgorithms.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.superdoc or (pkgs.buildPackages.superdoc or (errorHandler.setupDepError "superdoc")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."easyrender" or (errorHandler.buildDepError "easyrender"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          ];
        buildable = true;
        };
      exes = {
        "quipper" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            ];
          buildable = true;
          };
        "quipperi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            ];
          buildable = true;
          };
        "quipperdoc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
            ];
          buildable = true;
          };
        "quipper-pp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }