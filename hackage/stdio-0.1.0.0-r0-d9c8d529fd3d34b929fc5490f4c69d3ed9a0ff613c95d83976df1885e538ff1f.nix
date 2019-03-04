{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { integer-simple = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "stdio"; version = "0.1.0.0"; };
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
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.primitive)
          (hsPkgs.deepseq)
          (hsPkgs.template-haskell)
          (hsPkgs.exceptions)
          (hsPkgs.transformers)
          (hsPkgs.word8)
          (hsPkgs.scientific)
          (hsPkgs.hashable)
          (hsPkgs.case-insensitive)
          (hsPkgs.stm)
          (hsPkgs.time)
          ] ++ (if flags.integer-simple
          then [ (hsPkgs.integer-simple) ]
          else [ (hsPkgs.integer-gmp) ]);
        libs = (pkgs.lib).optionals (!flags.integer-simple) (if system.isWindows
          then [
            (pkgs."psapi")
            (pkgs."Iphlpapi")
            (pkgs."userenv")
            (pkgs."Ws2_32")
            ]
          else [ (pkgs."uv") ]);
        build-tools = (pkgs.lib).optionals (!flags.integer-simple) [
          ((hsPkgs.buildPackages).hsc2hs)
          ((hsPkgs.buildPackages).hspec-discover)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.stdio)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hashable)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.word8)
            (hsPkgs.scientific)
            (hsPkgs.primitive)
            ] ++ (if flags.integer-simple
            then [ (hsPkgs.integer-simple) ]
            else [ (hsPkgs.integer-gmp) ]);
          };
        };
      };
    }