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
      identifier = { name = "hasql"; version = "1.4"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql";
      url = "";
      synopsis = "An efficient PostgreSQL driver with a flexible mapping API";
      description = "This package is the root of the \\\"hasql\\\" ecosystem.\n\nThe API comes free from all kinds of exceptions. All error-reporting is explicit and is presented using the 'Either' type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-prelude" or (buildDepError "base-prelude"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-strict-builder" or (buildDepError "bytestring-strict-builder"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."contravariant-extras" or (buildDepError "contravariant-extras"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hashtables" or (buildDepError "hashtables"))
          (hsPkgs."loch-th" or (buildDepError "loch-th"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."placeholders" or (buildDepError "placeholders"))
          (hsPkgs."postgresql-binary" or (buildDepError "postgresql-binary"))
          (hsPkgs."postgresql-libpq" or (buildDepError "postgresql-libpq"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-builder" or (buildDepError "text-builder"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."hasql" or (buildDepError "hasql"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."rerebase" or (buildDepError "rerebase"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          };
        "threads-test" = {
          depends = [
            (hsPkgs."hasql" or (buildDepError "hasql"))
            (hsPkgs."rebase" or (buildDepError "rebase"))
            ];
          };
        "profiling" = {
          depends = [
            (hsPkgs."bug" or (buildDepError "bug"))
            (hsPkgs."hasql" or (buildDepError "hasql"))
            (hsPkgs."rerebase" or (buildDepError "rerebase"))
            ];
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."bug" or (buildDepError "bug"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."hasql" or (buildDepError "hasql"))
            (hsPkgs."rerebase" or (buildDepError "rerebase"))
            ];
          };
        };
      };
    }