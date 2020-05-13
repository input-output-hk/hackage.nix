{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."aur" or (errorHandler.buildDepError "aur"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."compactable" or (errorHandler.buildDepError "compactable"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."language-bash" or (errorHandler.buildDepError "language-bash"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-ghc" or (errorHandler.buildDepError "microlens-ghc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."non-empty-containers" or (errorHandler.buildDepError "non-empty-containers"))
          (hsPkgs."paths" or (errorHandler.buildDepError "paths"))
          (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."throttled" or (errorHandler.buildDepError "throttled"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
          ];
        buildable = true;
        };
      exes = {
        "aura" = {
          depends = [
            (hsPkgs."aura" or (errorHandler.buildDepError "aura"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."language-bash" or (errorHandler.buildDepError "language-bash"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."non-empty-containers" or (errorHandler.buildDepError "non-empty-containers"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."paths" or (errorHandler.buildDepError "paths"))
            (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
            ];
          buildable = true;
          };
        };
      tests = {
        "aura-test" = {
          depends = [
            (hsPkgs."aura" or (errorHandler.buildDepError "aura"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."language-bash" or (errorHandler.buildDepError "language-bash"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."non-empty-containers" or (errorHandler.buildDepError "non-empty-containers"))
            (hsPkgs."paths" or (errorHandler.buildDepError "paths"))
            (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."versions" or (errorHandler.buildDepError "versions"))
            ];
          buildable = true;
          };
        };
      };
    }