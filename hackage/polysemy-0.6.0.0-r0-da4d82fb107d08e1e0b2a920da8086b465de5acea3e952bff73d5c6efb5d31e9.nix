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
    flags = { dump-core = false; error-messages = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "polysemy"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/polysemy#readme";
      url = "";
      synopsis = "Higher-order, low-boilerplate, zero-cost free monads.";
      description = "Please see the README on GitHub at <https://github.com/isovector/polysemy#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."first-class-families" or (buildDepError "first-class-families"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or (buildDepError "th-abstraction"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."type-errors" or (buildDepError "type-errors"))
          (hsPkgs."unagi-chan" or (buildDepError "unagi-chan"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.6") (hsPkgs."loopbreaker" or (buildDepError "loopbreaker"))) ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or (buildDepError "dump-core"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.2.2") (hsPkgs."unsupported-ghc-version" or (buildDepError "unsupported-ghc-version"));
        };
      tests = {
        "polysemy-test" = {
          depends = [
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."first-class-families" or (buildDepError "first-class-families"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."inspection-testing" or (buildDepError "inspection-testing"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."polysemy" or (buildDepError "polysemy"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."th-abstraction" or (buildDepError "th-abstraction"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."type-errors" or (buildDepError "type-errors"))
            (hsPkgs."unagi-chan" or (buildDepError "unagi-chan"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.6") (hsPkgs."loopbreaker" or (buildDepError "loopbreaker"));
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (buildToolDepError "hspec-discover")))
            ];
          };
        };
      benchmarks = {
        "polysemy-bench" = {
          depends = [
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."first-class-families" or (buildDepError "first-class-families"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."freer-simple" or (buildDepError "freer-simple"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."polysemy" or (buildDepError "polysemy"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."th-abstraction" or (buildDepError "th-abstraction"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."type-errors" or (buildDepError "type-errors"))
            (hsPkgs."unagi-chan" or (buildDepError "unagi-chan"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.6") (hsPkgs."loopbreaker" or (buildDepError "loopbreaker"));
          };
        };
      };
    }