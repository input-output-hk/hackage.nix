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
      identifier = { name = "fixed-vector-hetero"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "http://github.org/Shimuuar/fixed-vector-hetero";
      url = "";
      synopsis = "Library for working with product types generically";
      description = "Library allow to work with arbitrary product types in generic\nmanner. They could be constructed, destucted, converted provided\nthey are product of identical types.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.cabal-doctest or (pkgs.pkgsBuildBuild.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."fixed-vector" or (errorHandler.buildDepError "fixed-vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."fixed-vector" or (errorHandler.buildDepError "fixed-vector"))
            (hsPkgs."fixed-vector-hetero" or (errorHandler.buildDepError "fixed-vector-hetero"))
          ];
          buildable = if compiler.isGhcjs && true then false else true;
        };
      };
    };
  }