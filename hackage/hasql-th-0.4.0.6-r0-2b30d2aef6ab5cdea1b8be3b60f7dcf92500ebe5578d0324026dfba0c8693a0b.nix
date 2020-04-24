{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hasql-th"; version = "0.4.0.6"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          (hsPkgs."fast-builder" or ((hsPkgs.pkgs-errors).buildDepError "fast-builder"))
          (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."hasql" or ((hsPkgs.pkgs-errors).buildDepError "hasql"))
          (hsPkgs."headed-megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "headed-megaparsec"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."parser-combinators" or ((hsPkgs.pkgs-errors).buildDepError "parser-combinators"))
          (hsPkgs."selective" or ((hsPkgs.pkgs-errors).buildDepError "selective"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."template-haskell-compat-v0208" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell-compat-v0208"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-builder" or ((hsPkgs.pkgs-errors).buildDepError "text-builder"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
            (hsPkgs."fast-builder" or ((hsPkgs.pkgs-errors).buildDepError "fast-builder"))
            (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."hasql" or ((hsPkgs.pkgs-errors).buildDepError "hasql"))
            (hsPkgs."headed-megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "headed-megaparsec"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."parser-combinators" or ((hsPkgs.pkgs-errors).buildDepError "parser-combinators"))
            (hsPkgs."selective" or ((hsPkgs.pkgs-errors).buildDepError "selective"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."text-builder" or ((hsPkgs.pkgs-errors).buildDepError "text-builder"))
            (hsPkgs."tuple-th" or ((hsPkgs.pkgs-errors).buildDepError "tuple-th"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }