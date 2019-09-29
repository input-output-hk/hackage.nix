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
    flags = { with-phash = false; llvm = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "perceptual-hash"; version = "0.1.3.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Find duplicate images";
      description = "Find similar images using perceptual hashes";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hip" or (buildDepError "hip"))
          (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."repa" or (buildDepError "repa"))
          ];
        pkgconfig = (pkgs.lib).optional (flags.with-phash) (pkgconfPkgs."pHash" or (pkgConfDepError "pHash"));
        buildable = true;
        };
      foreignlibs = {
        "hsphash" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."perceptual-hash" or (buildDepError "perceptual-hash"))
            ];
          buildable = true;
          };
        };
      exes = {
        "phash" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."perceptual-hash" or (buildDepError "perceptual-hash"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."par-traverse" or (buildDepError "par-traverse"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      tests = {
        "perceptual-hash-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."perceptual-hash" or (buildDepError "perceptual-hash"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "phash-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."perceptual-hash" or (buildDepError "perceptual-hash"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (buildToolDepError "cpphs")))
            ];
          buildable = true;
          };
        };
      };
    }