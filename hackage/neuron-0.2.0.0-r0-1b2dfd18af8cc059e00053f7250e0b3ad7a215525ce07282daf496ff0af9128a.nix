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
      specVersion = "2.4";
      identifier = { name = "neuron"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Sridhar Ratnakumar";
      maintainer = "srid@srid.ca";
      author = "Sridhar Ratnakumar";
      homepage = "https://neuron.srid.ca";
      url = "";
      synopsis = "Haskell meets Zettelkasten, for your plain-text delight.";
      description = "neuron is a system for managing your plain-text Zettelkasten notes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."clay" or (buildDepError "clay"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."gitrev" or (buildDepError "gitrev"))
          (hsPkgs."lucid" or (buildDepError "lucid"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."pandoc" or (buildDepError "pandoc"))
          (hsPkgs."path" or (buildDepError "path"))
          (hsPkgs."path-io" or (buildDepError "path-io"))
          (hsPkgs."relude" or (buildDepError "relude"))
          (hsPkgs."rib" or (buildDepError "rib"))
          (hsPkgs."shake" or (buildDepError "shake"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."mmark" or (buildDepError "mmark"))
          (hsPkgs."mmark-ext" or (buildDepError "mmark-ext"))
          (hsPkgs."modern-uri" or (buildDepError "modern-uri"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."filepattern" or (buildDepError "filepattern"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."algebraic-graphs" or (buildDepError "algebraic-graphs"))
          (hsPkgs."dhall" or (buildDepError "dhall"))
          (hsPkgs."which" or (buildDepError "which"))
          (hsPkgs."unix" or (buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = {
        "neuron" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."clay" or (buildDepError "clay"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."gitrev" or (buildDepError "gitrev"))
            (hsPkgs."lucid" or (buildDepError "lucid"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."path-io" or (buildDepError "path-io"))
            (hsPkgs."relude" or (buildDepError "relude"))
            (hsPkgs."rib" or (buildDepError "rib"))
            (hsPkgs."shake" or (buildDepError "shake"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."mmark" or (buildDepError "mmark"))
            (hsPkgs."mmark-ext" or (buildDepError "mmark-ext"))
            (hsPkgs."modern-uri" or (buildDepError "modern-uri"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."filepattern" or (buildDepError "filepattern"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."algebraic-graphs" or (buildDepError "algebraic-graphs"))
            (hsPkgs."dhall" or (buildDepError "dhall"))
            (hsPkgs."which" or (buildDepError "which"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."rib" or (buildDepError "rib"))
            (hsPkgs."with-utf8" or (buildDepError "with-utf8"))
            ];
          buildable = true;
          };
        };
      tests = {
        "neuron-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."clay" or (buildDepError "clay"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."gitrev" or (buildDepError "gitrev"))
            (hsPkgs."lucid" or (buildDepError "lucid"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."path-io" or (buildDepError "path-io"))
            (hsPkgs."relude" or (buildDepError "relude"))
            (hsPkgs."rib" or (buildDepError "rib"))
            (hsPkgs."shake" or (buildDepError "shake"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."mmark" or (buildDepError "mmark"))
            (hsPkgs."mmark-ext" or (buildDepError "mmark-ext"))
            (hsPkgs."modern-uri" or (buildDepError "modern-uri"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."filepattern" or (buildDepError "filepattern"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."algebraic-graphs" or (buildDepError "algebraic-graphs"))
            (hsPkgs."dhall" or (buildDepError "dhall"))
            (hsPkgs."which" or (buildDepError "which"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }