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
      specVersion = "1.8";
      identifier = { name = "hedgehog"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jacob Stanley <jacob@stanley.io>";
      author = "Jacob Stanley";
      homepage = "https://hedgehog.qa";
      url = "";
      synopsis = "Release with confidence.";
      description = "<http://hedgehog.qa/ Hedgehog> automatically generates a comprehensive array\nof test cases, exercising your software in ways human testers would never\nimagine.\n\nGenerate hundreds of test cases automatically, exposing even the\nmost insidious of corner cases. Failures are automatically simplified, giving\ndevelopers coherent, intelligible error messages.\n\nTo get started quickly, see the <https://github.com/hedgehogqa/haskell-hedgehog/tree/master/hedgehog-example examples>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."concurrent-output" or (buildDepError "concurrent-output"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."fail" or (buildDepError "fail"))
          (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."wl-pprint-annotated" or (buildDepError "wl-pprint-annotated"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mmorph" or (buildDepError "mmorph"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }