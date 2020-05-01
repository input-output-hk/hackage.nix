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
      identifier = { name = "hasql-th"; version = "0.4.0.7"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql-th";
      url = "";
      synopsis = "Template Haskell utilities for Hasql";
      description = "Extension-library for Hasql,\nbringing compile-time syntax checking,\ngreat simplification of declaration of statements and\nother TemplateHaskell-based utilities.\n\nFor details please see <https://github.com/nikita-volkov/hasql-th the readme>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."fast-builder" or (buildDepError "fast-builder"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hasql" or (buildDepError "hasql"))
          (hsPkgs."headed-megaparsec" or (buildDepError "headed-megaparsec"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."parser-combinators" or (buildDepError "parser-combinators"))
          (hsPkgs."selective" or (buildDepError "selective"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."template-haskell-compat-v0208" or (buildDepError "template-haskell-compat-v0208"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-builder" or (buildDepError "text-builder"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."contravariant" or (buildDepError "contravariant"))
            (hsPkgs."fast-builder" or (buildDepError "fast-builder"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hasql" or (buildDepError "hasql"))
            (hsPkgs."headed-megaparsec" or (buildDepError "headed-megaparsec"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."parser-combinators" or (buildDepError "parser-combinators"))
            (hsPkgs."selective" or (buildDepError "selective"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-builder" or (buildDepError "text-builder"))
            (hsPkgs."tuple-th" or (buildDepError "tuple-th"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }