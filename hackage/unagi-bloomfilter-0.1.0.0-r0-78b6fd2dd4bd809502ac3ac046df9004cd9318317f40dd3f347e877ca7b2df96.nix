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
    flags = { dev = false; instrumented = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "unagi-bloomfilter"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "http://github.com/jberryman/unagi-bloomfilter";
      url = "";
      synopsis = "A fast, cache-efficient, concurrent bloom filter";
      description = "This library implements a fast concurrent bloom filter, based on bloom-1 from\n\"Fast Bloom Filters and Their Generalization\" by Y Qiao, et al.\n\nA bloom filter is a probabilistic, constant-space, set-like data structure\nsupporting insertion and membership queries. This implementation is backed by\nSipHash so can safely consume untrusted inputs.\n\nThe implementation here compares favorably with traditional set\nimplementations in a single-threaded context:\n\n<<http://i.imgur.com/t3vroKE.png>>\n\nUnfortunately writes in particular don't seem to scale currently; i.e.\ndistributing writes across multiple threads may be /slower/ than in a\nsingle-threaded context, because of memory effects. We plan to export\nfunctionality that would support using the filter here in a concurrent\ncontext with better memory behavior (e.g. a server that shards to a\nthread-pool which handles only a portion of the bloom array).\n\n<<http://i.imgur.com/RaUSmZB.png>>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."hashabler" or (buildDepError "hashabler"))
          ];
        };
      exes = {
        "dev-example" = {
          depends = (pkgs.lib).optionals (!(!flags.dev)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unagi-bloomfilter" or (buildDepError "unagi-bloomfilter"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = (pkgs.lib).optionals (flags.dev) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."unagi-bloomfilter" or (buildDepError "unagi-bloomfilter"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hashabler" or (buildDepError "hashabler"))
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = (pkgs.lib).optionals (flags.dev) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."unagi-bloomfilter" or (buildDepError "unagi-bloomfilter"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."hashabler" or (buildDepError "hashabler"))
            ];
          };
        };
      };
    }