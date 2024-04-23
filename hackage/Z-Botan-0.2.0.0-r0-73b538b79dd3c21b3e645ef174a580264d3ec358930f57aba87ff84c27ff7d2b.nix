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
      identifier = { name = "Z-Botan"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Z.Haskell Contributors, 2017-2020";
      maintainer = "winterland1989@gmail.com";
      author = "Dong Han, Tao He";
      homepage = "https://github.com/ZHaskell/z-botan";
      url = "";
      synopsis = "Crypto for Haskell";
      description = "Crypto for Haskell, based on <http://botan.randombit.net/ Botan>";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.setupDepError "filepath")))
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
          (hsPkgs."Z-Data" or (errorHandler.buildDepError "Z-Data"))
          (hsPkgs."Z-IO" or (errorHandler.buildDepError "Z-IO"))
        ];
        libs = pkgs.lib.optionals (system.isWindows) [
          (pkgs."Ws2_32" or (errorHandler.sysDepError "Ws2_32"))
          (pkgs."crypt32" or (errorHandler.sysDepError "crypt32"))
        ] ++ (if system.isOsx
          then [ (pkgs."c++" or (errorHandler.sysDepError "c++")) ]
          else [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ]);
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
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