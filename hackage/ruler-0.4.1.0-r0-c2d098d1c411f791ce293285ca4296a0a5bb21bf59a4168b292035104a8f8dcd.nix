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
      specVersion = "1.24";
      identifier = { name = "ruler"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Utrecht University, Department of Information and Computing Sciences, Software Technology group, Atze Dijkstra";
      maintainer = "atzedijkstra@gmail.com";
      author = "Atze Dijkstra";
      homepage = "https://github.com/UU-ComputerScience/ruler";
      url = "";
      synopsis = "Ruler tool for UHC";
      description = "Ruler tool used by UHC (Utrecht Haskell Compiler)";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.uuagc-cabal or (pkgs.pkgsBuildBuild.uuagc-cabal or (errorHandler.setupDepError "uuagc-cabal")))
        (hsPkgs.pkgsBuildBuild.uuagc or (pkgs.pkgsBuildBuild.uuagc or (errorHandler.setupDepError "uuagc")))
        (hsPkgs.pkgsBuildBuild.shuffle or (pkgs.pkgsBuildBuild.shuffle or (errorHandler.setupDepError "shuffle")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
      ];
    };
    components = {
      exes = {
        "ruler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."uhc-util" or (errorHandler.buildDepError "uhc-util"))
            (hsPkgs."uuagc" or (errorHandler.buildDepError "uuagc"))
            (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
            (hsPkgs."shuffle" or (errorHandler.buildDepError "shuffle"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ];
          buildable = true;
        };
      };
    };
  }