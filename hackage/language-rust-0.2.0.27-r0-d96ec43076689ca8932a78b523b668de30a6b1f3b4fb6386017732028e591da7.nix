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
    flags = { usebytestrings = true; enablequasiquotes = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "language-rust"; version = "0.2.0.27"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017-2018 Alec Theriault";
      maintainer = "alec.theriault@gmail.com";
      author = "Alec Theriault";
      homepage = "https://github.com/harpocrates/language-rust";
      url = "";
      synopsis = "Parsing and pretty printing of Rust code";
      description = "Language Rust is a library for the analysis of Rust code. It includes a\ncomplete, well tested parser and pretty printer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."semigroups" or (buildDepError "semigroups"))) ++ (pkgs.lib).optionals (flags.usebytestrings) [
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ]) ++ (pkgs.lib).optional (flags.enablequasiquotes) (hsPkgs."template-haskell" or (buildDepError "template-haskell"));
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (buildToolDepError "alex")))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (buildToolDepError "happy")))
          ];
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."language-rust" or (buildDepError "language-rust"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            ];
          };
        "rustc-tests" = {
          depends = [
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."language-rust" or (buildDepError "language-rust"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."semigroups" or (buildDepError "semigroups"));
          };
        };
      benchmarks = {
        "timing-benchmarks" = {
          depends = [
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."statistics" or (buildDepError "statistics"))
            (hsPkgs."language-rust" or (buildDepError "language-rust"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "allocation-benchmarks" = {
          depends = [
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."weigh" or (buildDepError "weigh"))
            (hsPkgs."language-rust" or (buildDepError "language-rust"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }