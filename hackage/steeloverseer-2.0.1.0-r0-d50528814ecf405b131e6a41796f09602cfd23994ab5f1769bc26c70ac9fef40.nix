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
      identifier = { name = "steeloverseer"; version = "2.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "efsubenovex@gmail.com";
      author = "Schell Scivally,\nMitchell Rosen";
      homepage = "https://github.com/schell/steeloverseer#readme";
      url = "";
      synopsis = "A file watcher and development tool.";
      description = "A command line tool that responds to filesystem events. Allows the user to automatically execute commands after files are added or updated. Watches files using regular expressions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."streaming" or (buildDepError "streaming"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."process" or (buildDepError "process"))
          ];
        };
      exes = {
        "sos" = {
          depends = [
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."steeloverseer" or (buildDepError "steeloverseer"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ] ++ (pkgs.lib).optional (system.isOsx) (hsPkgs."hfsevents" or (buildDepError "hfsevents"));
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."steeloverseer" or (buildDepError "steeloverseer"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          };
        };
      };
    }