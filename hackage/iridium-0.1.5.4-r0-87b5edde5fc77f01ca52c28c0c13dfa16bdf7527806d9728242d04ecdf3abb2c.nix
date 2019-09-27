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
      identifier = { name = "iridium"; version = "0.1.5.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016 Lennart Spitzner";
      maintainer = "lsp@informatik.uni-kiel.de";
      author = "Lennart Spitzner";
      homepage = "https://github.com/lspitzner/iridium";
      url = "";
      synopsis = "Automated Testing and Package Uploading";
      description = "This executable aims to automate several typical steps when\nuploading a new package version to hackage.\n\nSteps currently include:\n\n* Compilation and running tests using multiple compiler versions.\n\n* Checking that the changelog mentions the latest version.\n\n* Checking that the upper bounds of dependencies\nare up-to-date by making use of stackage snapshots.\n\n* Uploading of both the package itself and the documentation.\n\nThe program is configurable using a per-project .yaml file.\n\nSee the README.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."turtle" or (buildDepError "turtle"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."multistate" or (buildDepError "multistate"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."xmlhtml" or (buildDepError "xmlhtml"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."split" or (buildDepError "split"))
          ];
        buildable = true;
        };
      exes = {
        "iridium" = {
          depends = [
            (hsPkgs."iridium" or (buildDepError "iridium"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."multistate" or (buildDepError "multistate"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }