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
      specVersion = "2.4";
      identifier = { name = "Z-Botan"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Z.Haskell Contributors, 2017-2020";
      maintainer = "winterland1989@gmail.com";
      author = "Z.Haskell Contributors";
      homepage = "https://github.com/ZHaskell/z-botan";
      url = "";
      synopsis = "Crypto for Haskell";
      description = "Crypto for Haskell, based on <http://botan.randombit.net/ Botan>";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."Z-Data" or (errorHandler.buildDepError "Z-Data"))
          (hsPkgs."Z-IO" or (errorHandler.buildDepError "Z-IO"))
        ];
        libs = pkgs.lib.optionals (system.isWindows) [
          (pkgs."Ws2_32" or (errorHandler.sysDepError "Ws2_32"))
          (pkgs."crypt32" or (errorHandler.sysDepError "crypt32"))
        ] ++ (if system.isOsx
          then [ (pkgs."c++" or (errorHandler.sysDepError "c++")) ]
          else [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ]);
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."CoreServices" or (errorHandler.sysDepError "CoreServices"));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
        ];
        buildable = true;
      };
      tests = {
        "Z-Botan-Test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."Z-Botan" or (errorHandler.buildDepError "Z-Botan"))
            (hsPkgs."Z-Data" or (errorHandler.buildDepError "Z-Data"))
            (hsPkgs."Z-IO" or (errorHandler.buildDepError "Z-IO"))
          ];
          buildable = true;
        };
      };
    };
  }