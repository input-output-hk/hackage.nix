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
      specVersion = "1.12";
      identifier = { name = "hpack-dhall"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "© 2018 Phil de Joux, © 2018 Block Scope Limited";
      maintainer = "Phil de Joux <phil.dejoux@blockscope.com>";
      author = "";
      homepage = "https://github.com/blockscope/hpack-dhall#readme";
      url = "";
      synopsis = "hpack's dhalling";
      description = "Work with hpack's top-level\n<https://github.com/sol/hpack#top-level-fields fields> in a Dhall\nrecord with the following executables;\n\n* with @dhall-hpack-cabal@ write the @.cabal@ for a @.dhall@ package description.\n* with @dhall-hpack-dhall@ show the package description expression, with imports resolved.\n* with @dhall-hpack-json@ show the package description as JSON.\n* with @dhall-hpack-yaml@ show the package description as YAML.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."dhall" or (buildDepError "dhall"))
          (hsPkgs."dhall-json" or (buildDepError "dhall-json"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hpack" or (buildDepError "hpack"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          ];
        buildable = true;
        };
      exes = {
        "dhall-hpack-cabal" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."dhall" or (buildDepError "dhall"))
            (hsPkgs."dhall-json" or (buildDepError "dhall-json"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hpack" or (buildDepError "hpack"))
            (hsPkgs."hpack-dhall" or (buildDepError "hpack-dhall"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          buildable = true;
          };
        "dhall-hpack-dhall" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."dhall" or (buildDepError "dhall"))
            (hsPkgs."dhall-json" or (buildDepError "dhall-json"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hpack" or (buildDepError "hpack"))
            (hsPkgs."hpack-dhall" or (buildDepError "hpack-dhall"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          buildable = true;
          };
        "dhall-hpack-json" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."dhall" or (buildDepError "dhall"))
            (hsPkgs."dhall-json" or (buildDepError "dhall-json"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hpack" or (buildDepError "hpack"))
            (hsPkgs."hpack-dhall" or (buildDepError "hpack-dhall"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          buildable = true;
          };
        "dhall-hpack-yaml" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."dhall" or (buildDepError "dhall"))
            (hsPkgs."dhall-json" or (buildDepError "dhall-json"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hpack" or (buildDepError "hpack"))
            (hsPkgs."hpack-dhall" or (buildDepError "hpack-dhall"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      tests = {
        "golden" = {
          depends = [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."dhall" or (buildDepError "dhall"))
            (hsPkgs."dhall-json" or (buildDepError "dhall-json"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hpack" or (buildDepError "hpack"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (buildDepError "tasty-golden"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }