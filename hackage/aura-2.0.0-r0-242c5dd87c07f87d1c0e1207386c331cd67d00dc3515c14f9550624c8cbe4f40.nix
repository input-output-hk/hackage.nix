{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
          (hsPkgs."algebraic-graphs" or ((hsPkgs.pkgs-errors).buildDepError "algebraic-graphs"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."aur" or ((hsPkgs.pkgs-errors).buildDepError "aur"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-prelude" or ((hsPkgs.pkgs-errors).buildDepError "base-prelude"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."compactable" or ((hsPkgs.pkgs-errors).buildDepError "compactable"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."freer-simple" or ((hsPkgs.pkgs-errors).buildDepError "freer-simple"))
          (hsPkgs."generic-lens" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."language-bash" or ((hsPkgs.pkgs-errors).buildDepError "language-bash"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          (hsPkgs."microlens-ghc" or ((hsPkgs.pkgs-errors).buildDepError "microlens-ghc"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."non-empty-containers" or ((hsPkgs.pkgs-errors).buildDepError "non-empty-containers"))
          (hsPkgs."paths" or ((hsPkgs.pkgs-errors).buildDepError "paths"))
          (hsPkgs."pretty-simple" or ((hsPkgs.pkgs-errors).buildDepError "pretty-simple"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."throttled" or ((hsPkgs.pkgs-errors).buildDepError "throttled"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."typed-process" or ((hsPkgs.pkgs-errors).buildDepError "typed-process"))
          (hsPkgs."versions" or ((hsPkgs.pkgs-errors).buildDepError "versions"))
          (hsPkgs."witherable" or ((hsPkgs.pkgs-errors).buildDepError "witherable"))
          ];
        buildable = true;
        };
      exes = {
        "aura" = {
          depends = [
            (hsPkgs."aura" or ((hsPkgs.pkgs-errors).buildDepError "aura"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-prelude" or ((hsPkgs.pkgs-errors).buildDepError "base-prelude"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
            (hsPkgs."freer-simple" or ((hsPkgs.pkgs-errors).buildDepError "freer-simple"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
            (hsPkgs."language-bash" or ((hsPkgs.pkgs-errors).buildDepError "language-bash"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."non-empty-containers" or ((hsPkgs.pkgs-errors).buildDepError "non-empty-containers"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."paths" or ((hsPkgs.pkgs-errors).buildDepError "paths"))
            (hsPkgs."pretty-simple" or ((hsPkgs.pkgs-errors).buildDepError "pretty-simple"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."typed-process" or ((hsPkgs.pkgs-errors).buildDepError "typed-process"))
            (hsPkgs."versions" or ((hsPkgs.pkgs-errors).buildDepError "versions"))
            ];
          buildable = true;
          };
        };
      tests = {
        "aura-test" = {
          depends = [
            (hsPkgs."aura" or ((hsPkgs.pkgs-errors).buildDepError "aura"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-prelude" or ((hsPkgs.pkgs-errors).buildDepError "base-prelude"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
            (hsPkgs."freer-simple" or ((hsPkgs.pkgs-errors).buildDepError "freer-simple"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."language-bash" or ((hsPkgs.pkgs-errors).buildDepError "language-bash"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."non-empty-containers" or ((hsPkgs.pkgs-errors).buildDepError "non-empty-containers"))
            (hsPkgs."paths" or ((hsPkgs.pkgs-errors).buildDepError "paths"))
            (hsPkgs."pretty-simple" or ((hsPkgs.pkgs-errors).buildDepError "pretty-simple"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."typed-process" or ((hsPkgs.pkgs-errors).buildDepError "typed-process"))
            (hsPkgs."versions" or ((hsPkgs.pkgs-errors).buildDepError "versions"))
            ];
          buildable = true;
          };
        };
      };
    }