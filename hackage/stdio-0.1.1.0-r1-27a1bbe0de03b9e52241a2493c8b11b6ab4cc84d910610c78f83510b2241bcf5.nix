let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { no-pkg-config = false; integer-simple = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "stdio"; version = "0.1.1.0"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."word8" or (buildDepError "word8"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."stm" or (buildDepError "stm"))
          ] ++ (if flags.integer-simple
          then [ (hsPkgs."integer-simple" or (buildDepError "integer-simple")) ]
          else [ (hsPkgs."integer-gmp" or (buildDepError "integer-gmp")) ]);
        libs = (pkgs.lib).optionals (!flags.integer-simple) (if system.isWindows
          then [
            (pkgs."psapi" or (sysDepError "psapi"))
            (pkgs."Iphlpapi" or (sysDepError "Iphlpapi"))
            (pkgs."userenv" or (sysDepError "userenv"))
            (pkgs."Ws2_32" or (sysDepError "Ws2_32"))
            ]
          else (pkgs.lib).optional (flags.no-pkg-config) (pkgs."uv" or (sysDepError "uv")));
        pkgconfig = (pkgs.lib).optionals (!flags.integer-simple) ((pkgs.lib).optionals (!system.isWindows) ((pkgs.lib).optional (!flags.no-pkg-config) (pkgconfPkgs."libuv" or (pkgConfDepError "libuv"))));
        build-tools = (pkgs.lib).optionals (!flags.integer-simple) [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (buildToolDepError "hspec-discover")))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."stdio" or (buildDepError "stdio"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."word8" or (buildDepError "word8"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            ] ++ (if flags.integer-simple
            then [
              (hsPkgs."integer-simple" or (buildDepError "integer-simple"))
              ]
            else [ (hsPkgs."integer-gmp" or (buildDepError "integer-gmp")) ]);
          buildable = true;
          };
        };
      };
    }