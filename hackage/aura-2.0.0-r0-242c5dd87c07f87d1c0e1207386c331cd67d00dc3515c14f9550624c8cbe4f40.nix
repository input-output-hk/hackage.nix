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
      identifier = { name = "aura"; version = "2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "colin@fosskers.ca";
      author = "Colin Woodbury";
      homepage = "https://github.com/aurapm/aura";
      url = "";
      synopsis = "A secure package manager for Arch Linux and the AUR, written in Haskell.";
      description = "aura is a package manager for Arch Linux written in Haskell. It connects to both the official Arch repostitories and to the AUR, allowing easy control of all packages on an Arch system. It allows /all/ pacman operations and provides /new/ custom ones for dealing with AUR packages. This differs from some other AUR package managers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
          (hsPkgs."algebraic-graphs" or (buildDepError "algebraic-graphs"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."aur" or (buildDepError "aur"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-prelude" or (buildDepError "base-prelude"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."compactable" or (buildDepError "compactable"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."freer-simple" or (buildDepError "freer-simple"))
          (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."language-bash" or (buildDepError "language-bash"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."microlens-ghc" or (buildDepError "microlens-ghc"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."non-empty-containers" or (buildDepError "non-empty-containers"))
          (hsPkgs."paths" or (buildDepError "paths"))
          (hsPkgs."pretty-simple" or (buildDepError "pretty-simple"))
          (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."throttled" or (buildDepError "throttled"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."typed-process" or (buildDepError "typed-process"))
          (hsPkgs."versions" or (buildDepError "versions"))
          (hsPkgs."witherable" or (buildDepError "witherable"))
          ];
        };
      exes = {
        "aura" = {
          depends = [
            (hsPkgs."aura" or (buildDepError "aura"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-prelude" or (buildDepError "base-prelude"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."freer-simple" or (buildDepError "freer-simple"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."language-bash" or (buildDepError "language-bash"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."non-empty-containers" or (buildDepError "non-empty-containers"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."paths" or (buildDepError "paths"))
            (hsPkgs."pretty-simple" or (buildDepError "pretty-simple"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            (hsPkgs."versions" or (buildDepError "versions"))
            ];
          };
        };
      tests = {
        "aura-test" = {
          depends = [
            (hsPkgs."aura" or (buildDepError "aura"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-prelude" or (buildDepError "base-prelude"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."freer-simple" or (buildDepError "freer-simple"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."language-bash" or (buildDepError "language-bash"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."non-empty-containers" or (buildDepError "non-empty-containers"))
            (hsPkgs."paths" or (buildDepError "paths"))
            (hsPkgs."pretty-simple" or (buildDepError "pretty-simple"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            (hsPkgs."versions" or (buildDepError "versions"))
            ];
          };
        };
      };
    }