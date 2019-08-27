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
    flags = { llvm = false; wall = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "rangemin"; version = "2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wasserman.louis@gmail.com";
      author = "Louis Wasserman";
      homepage = "";
      url = "";
      synopsis = "Linear range-min algorithms.";
      description = "Rapidly (in linear time) preprocesses a vector so that the minimum element of any given subrange can be looked up in constant time.\n\nThis implementation is based on an algorithm of Fischer and Heun, which can be found at <http://dx.doi.org/10.1007/11780441_5>.\nDespite being written entirely in Haskell (and maintaining referential transparency internally), it is competitive against\nthe C++ implementation written by Fischer and Heun themselves (included in the tarball), especially when compiled with LLVM.\n\nDepending on the target system, this library compiled with -fasm approximately ties with the original authors'\nC++ implementation compiled with -O3 -funroll-loops.  With -fllvm -optlc-O3, this library has been observed to beat\nthe same C++ implementation by 20-30%.\n\nInternally, this library rolls its own stream fusion system, avoiding the @vector@ package's issues with duplicated index\nvariables and providing a few other special features.  This package's API does, however, fuse (to the extent possible) with\ninput vectors using the @vector@ package fusion system.  In particular, it automagically recognizes input vectors whose\nelement types have a natural order-preserving injection into @Int@, converts them, and uses the specialized range-min\nimplementation for @Int@ vectors.  See \"Data.RangeMin\" for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          ];
        };
      };
    }