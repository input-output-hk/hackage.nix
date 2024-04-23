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
      identifier = { name = "RMP"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Noam Lewis <jones.noamle@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Binding to code that controls a Segway RMP";
      description = "This library provides an interface to a USB-connected Segway RMP.\n\nIt is based on code and information from <http://www.ai.sri.com/~vincent/segway.php>,\nand was tested on a Segway RMP 200.\n\nWARNING: The Segway RMP is a dangerous (and massive) device, use this library with care.\nThe library comes without warranty, and you may find the Segway running loose, harming people.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."allocated-processor" or (errorHandler.buildDepError "allocated-processor"))
        ];
        libs = [
          (pkgs."canlib" or (errorHandler.sysDepError "canlib"))
          (pkgs."ftd2xx" or (errorHandler.sysDepError "ftd2xx"))
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
        ];
        buildable = true;
      };
      exes = {
        "rmp-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."allocated-processor" or (errorHandler.buildDepError "allocated-processor"))
          ];
          libs = [
            (pkgs."canlib" or (errorHandler.sysDepError "canlib"))
            (pkgs."ftd2xx" or (errorHandler.sysDepError "ftd2xx"))
            (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          ];
          buildable = true;
        };
        "rmp-test-facedetect" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."allocated-processor" or (errorHandler.buildDepError "allocated-processor"))
            (hsPkgs."cv-combinators" or (errorHandler.buildDepError "cv-combinators"))
            (hsPkgs."HOpenCV" or (errorHandler.buildDepError "HOpenCV"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          ];
          libs = [
            (pkgs."canlib" or (errorHandler.sysDepError "canlib"))
            (pkgs."ftd2xx" or (errorHandler.sysDepError "ftd2xx"))
            (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          ];
          buildable = true;
        };
      };
    };
  }