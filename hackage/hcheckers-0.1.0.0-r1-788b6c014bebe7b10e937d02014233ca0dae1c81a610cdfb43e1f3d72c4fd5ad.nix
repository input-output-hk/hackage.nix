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
    flags = { verbose = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "hcheckers"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ilya V. Portnov";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya V. Portnov";
      homepage = "https://github.com/portnov/hcheckers#readme";
      url = "";
      synopsis = "Implementation of checkers (\"draughts\") board game - server application";
      description = "Please see the README on GitHub at <https://github.com/portnov/hcheckers#readme>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hcheckersd" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bits" or (buildDepError "bits"))
            (hsPkgs."bytes" or (buildDepError "bytes"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."concurrent-extra" or (buildDepError "concurrent-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ekg" or (buildDepError "ekg"))
            (hsPkgs."ekg-core" or (buildDepError "ekg-core"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hashtables" or (buildDepError "hashtables"))
            (hsPkgs."heavy-logger" or (buildDepError "heavy-logger"))
            (hsPkgs."hsyslog" or (buildDepError "hsyslog"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."monad-metrics" or (buildDepError "monad-metrics"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."psqueues" or (buildDepError "psqueues"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."random-access-file" or (buildDepError "random-access-file"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."stm-containers" or (buildDepError "stm-containers"))
            (hsPkgs."store" or (buildDepError "store"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-format-heavy" or (buildDepError "text-format-heavy"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unix-bytestring" or (buildDepError "unix-bytestring"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          };
        };
      };
    }