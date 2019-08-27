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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "nice-html"; version = "0.4.0"; };
      license = "MIT";
      copyright = "2017 Mike Ledger";
      maintainer = "mike@quasimal.com";
      author = "Mike Ledger";
      homepage = "https://github.com/mikeplus64/nice-html#readme";
      url = "";
      synopsis = "A fast and nice HTML templating library with distinct compilation/rendering phases.";
      description = "A fast and nice HTML templating library with distinct compilation/rendering phases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          (hsPkgs."recursion-schemes" or (buildDepError "recursion-schemes"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."lens" or (buildDepError "lens"))
          ];
        };
      benchmarks = {
        "mem" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."lucid" or (buildDepError "lucid"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."nice-html" or (buildDepError "nice-html"))
            (hsPkgs."weigh" or (buildDepError "weigh"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "mem-prof" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."lucid" or (buildDepError "lucid"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."nice-html" or (buildDepError "nice-html"))
            (hsPkgs."weigh" or (buildDepError "weigh"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "perf" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."lucid" or (buildDepError "lucid"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."nice-html" or (buildDepError "nice-html"))
            (hsPkgs."weigh" or (buildDepError "weigh"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }