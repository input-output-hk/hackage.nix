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
      specVersion = "2.0";
      identifier = { name = "dhrun"; version = "1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "fre@freux.fr";
      author = "Valentin Reis";
      homepage = "";
      url = "";
      synopsis = "Dhall/YAML configurable concurrent integration test executor.";
      description = "`dhrun` starts a list of (Unix) processes, monitors the standard streams for patterns that should be expected or avoided, kills the processes when criteria are met and exits accordingly. It is configured using either [Dhall](https://dhall-lang.org/) or [YAML](https://yaml.org/). See the [README.md](https://github.com/freuk/dhrun) file for details.";
      buildType = "Simple";
      };
    components = {
      sublibs = {
        "dhrun-lib" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."dhall" or (buildDepError "dhall"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          };
        };
      exes = {
        "dhrun" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."dhall" or (buildDepError "dhall"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."editor-open" or (buildDepError "editor-open"))
            ];
          };
        };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."dhall" or (buildDepError "dhall"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-golden" or (buildDepError "tasty-golden"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."generic-random" or (buildDepError "generic-random"))
            (hsPkgs."quickcheck-text" or (buildDepError "quickcheck-text"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."dhrun-lib" or (buildDepError "dhrun-lib"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            ];
          };
        };
      };
    }