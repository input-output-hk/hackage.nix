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
    flags = { cross = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "libarchive"; version = "2.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018-2019 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Haskell interface to libarchive";
      description = "Haskell bindings for [libarchive](https://www.libarchive.org/). Provides the ability to unpack archives, including the ability to unpack archives lazily.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.chs-cabal or (pkgs.buildPackages.chs-cabal or (buildToolDepError "chs-cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."composition-prelude" or (buildDepError "composition-prelude"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libarchive" or (pkgConfDepError "libarchive"))
          ];
        build-tools = (pkgs.lib).optional (!flags.cross) (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")));
        buildable = true;
        };
      tests = {
        "libarchive-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."libarchive" or (buildDepError "libarchive"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."dir-traverse" or (buildDepError "dir-traverse"))
            (hsPkgs."composition-prelude" or (buildDepError "composition-prelude"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "libarchive-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."libarchive" or (buildDepError "libarchive"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."tar-conduit" or (buildDepError "tar-conduit"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            ];
          buildable = true;
          };
        };
      };
    }