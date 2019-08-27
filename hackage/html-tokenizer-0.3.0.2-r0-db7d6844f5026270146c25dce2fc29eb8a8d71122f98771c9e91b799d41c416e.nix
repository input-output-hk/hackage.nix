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
      identifier = { name = "html-tokenizer"; version = "0.3.0.2"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/html-tokenizer";
      url = "";
      synopsis = "An \"attoparsec\"-based HTML tokenizer";
      description = "This library can be used as a basis for complex HTML parsers,\nor for streaming.\nE.g., by composing it with\n<http://hackage.haskell.org/package/list-t-attoparsec the \"list-t-attoparsec\" library>\nyou can produce a token stream,\nthus becoming able to implement a highly efficient stream-parser,\nwhich works in a single pass, constant memory and is capable of early termination.\n<http://hackage.haskell.org/package/list-t-html-parser \"list-t-html-parser\"> is such a parser.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."conversion" or (buildDepError "conversion"))
          (hsPkgs."conversion-text" or (buildDepError "conversion-text"))
          (hsPkgs."conversion-case-insensitive" or (buildDepError "conversion-case-insensitive"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base-prelude" or (buildDepError "base-prelude"))
          ];
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."base-prelude" or (buildDepError "base-prelude"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }