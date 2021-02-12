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
    flags = { no-pkg-config = false; integer-simple = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "stdio"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Dong Han, 2017-2018\n(c) Tao He, 2017-2019";
      maintainer = "winterland1989@gmail.com";
      author = "Dong Han, Tao He";
      homepage = "https://github.com/haskell-stdio/stdio";
      url = "";
      synopsis = "A simple and high performance IO toolkit for Haskell";
      description = "This package provides a simple and high performance IO toolkit for Haskell, including\npacked vectors, unicode texts, socket, file system, timers and more!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          ] ++ (if flags.integer-simple
          then [
            (hsPkgs."integer-simple" or (errorHandler.buildDepError "integer-simple"))
            ]
          else [
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            ]);
        libs = (pkgs.lib).optionals (!flags.integer-simple) (if system.isWindows
          then [
            (pkgs."psapi" or (errorHandler.sysDepError "psapi"))
            (pkgs."Iphlpapi" or (errorHandler.sysDepError "Iphlpapi"))
            (pkgs."userenv" or (errorHandler.sysDepError "userenv"))
            (pkgs."Ws2_32" or (errorHandler.sysDepError "Ws2_32"))
            ]
          else (pkgs.lib).optional (flags.no-pkg-config) (pkgs."uv" or (errorHandler.sysDepError "uv")));
        pkgconfig = (pkgs.lib).optionals (!flags.integer-simple) ((pkgs.lib).optionals (!system.isWindows) ((pkgs.lib).optional (!flags.no-pkg-config) (pkgconfPkgs."libuv" or (errorHandler.pkgConfDepError "libuv"))));
        build-tools = (pkgs.lib).optionals (!flags.integer-simple) [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."stdio" or (errorHandler.buildDepError "stdio"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ] ++ (if flags.integer-simple
            then [
              (hsPkgs."integer-simple" or (errorHandler.buildDepError "integer-simple"))
              ]
            else [
              (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
              ]);
          buildable = true;
          };
        };
      };
    }