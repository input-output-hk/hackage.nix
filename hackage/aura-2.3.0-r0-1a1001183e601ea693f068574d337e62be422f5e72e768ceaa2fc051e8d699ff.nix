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
      specVersion = "2.2";
      identifier = { name = "aura"; version = "2.3.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "colin@fosskers.ca";
      author = "Colin Woodbury";
      homepage = "https://github.com/fosskers/aura";
      url = "";
      synopsis = "A secure package manager for Arch Linux and the AUR.";
      description = "Aura is a package manager for Arch Linux. It connects to both the\nofficial Arch repostitories and to the AUR, allowing easy control of all\npackages on an Arch system. It allows /all/ pacman operations and provides\n/new/ custom ones for dealing with AUR packages. This differs from some other\nAUR package managers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."rio" or (buildDepError "rio"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."versions" or (buildDepError "versions"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."typed-process" or (buildDepError "typed-process"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."algebraic-graphs" or (buildDepError "algebraic-graphs"))
          (hsPkgs."aur" or (buildDepError "aur"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."language-bash" or (buildDepError "language-bash"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."scheduler" or (buildDepError "scheduler"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unliftio" or (buildDepError "unliftio"))
          ];
        buildable = true;
        };
      exes = {
        "aura" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."rio" or (buildDepError "rio"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."versions" or (buildDepError "versions"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            (hsPkgs."aura" or (buildDepError "aura"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      tests = {
        "aura-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."rio" or (buildDepError "rio"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."versions" or (buildDepError "versions"))
            (hsPkgs."aura" or (buildDepError "aura"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }