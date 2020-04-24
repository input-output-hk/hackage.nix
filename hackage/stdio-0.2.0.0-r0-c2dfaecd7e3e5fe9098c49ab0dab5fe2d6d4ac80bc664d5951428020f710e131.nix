{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          ] ++ (if flags.integer-simple
          then [
            (hsPkgs."integer-simple" or ((hsPkgs.pkgs-errors).buildDepError "integer-simple"))
            ]
          else [
            (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
            ]);
        libs = (pkgs.lib).optionals (!flags.integer-simple) (if system.isWindows
          then [
            (pkgs."psapi" or ((hsPkgs.pkgs-errors).sysDepError "psapi"))
            (pkgs."Iphlpapi" or ((hsPkgs.pkgs-errors).sysDepError "Iphlpapi"))
            (pkgs."userenv" or ((hsPkgs.pkgs-errors).sysDepError "userenv"))
            (pkgs."Ws2_32" or ((hsPkgs.pkgs-errors).sysDepError "Ws2_32"))
            ]
          else (pkgs.lib).optional (flags.no-pkg-config) (pkgs."uv" or ((hsPkgs.pkgs-errors).sysDepError "uv")));
        pkgconfig = (pkgs.lib).optionals (!flags.integer-simple) ((pkgs.lib).optionals (!system.isWindows) ((pkgs.lib).optional (!flags.no-pkg-config) (pkgconfPkgs."libuv" or ((hsPkgs.pkgs-errors).pkgConfDepError "libuv"))));
        build-tools = (pkgs.lib).optionals (!flags.integer-simple) [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or ((hsPkgs.pkgs-errors).buildToolDepError "hspec-discover")))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."stdio" or ((hsPkgs.pkgs-errors).buildDepError "stdio"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."word8" or ((hsPkgs.pkgs-errors).buildDepError "word8"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            ] ++ (if flags.integer-simple
            then [
              (hsPkgs."integer-simple" or ((hsPkgs.pkgs-errors).buildDepError "integer-simple"))
              ]
            else [
              (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
              ]);
          buildable = true;
          };
        };
      };
    }