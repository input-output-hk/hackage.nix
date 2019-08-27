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
      identifier = { name = "mushu"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Elie Genard";
      maintainer = "elaye.github.io@gmail.com";
      author = "Elie Genard";
      homepage = "https://github.com/elaye/mushu#README.md";
      url = "";
      synopsis = "Minimalist MPD client";
      description = "Mushu is a minimalist MPD client with a TUI and an incremental fuzzy finder for your music library";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mushu" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."libmpd" or (buildDepError "libmpd"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."fuzzy" or (buildDepError "fuzzy"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."list-t" or (buildDepError "list-t"))
            (hsPkgs."connection" or (buildDepError "connection"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."hscurses" or (buildDepError "hscurses"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."htoml" or (buildDepError "htoml"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."brick" or (buildDepError "brick"))
            (hsPkgs."text-zipper" or (buildDepError "text-zipper"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
            (hsPkgs."microlens-platform" or (buildDepError "microlens-platform"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          };
        };
      tests = {
        "mushu-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
            ];
          };
        };
      };
    }