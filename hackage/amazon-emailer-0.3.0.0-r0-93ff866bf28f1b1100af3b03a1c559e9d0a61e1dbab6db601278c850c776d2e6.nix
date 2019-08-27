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
      specVersion = "1.8";
      identifier = { name = "amazon-emailer"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dbp@dbpmail.net";
      author = "Daniel Patterson";
      homepage = "http://hub.darcs.net/dbp/amazon-emailer";
      url = "";
      synopsis = "A queue daemon for working with Amazon's Simple Email Service with a\nPostgreSQL table as a queue.";
      description = "This application checks every second for messages in a queue table,\nif there exist some that haven't been sent, it grabs\na specified number out (based on what your current send rate is), sends them,\nmarks them as sent, and goes back to sleep.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "amazon-emailer" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
            (hsPkgs."mime-mail-ses" or (buildDepError "mime-mail-ses"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        };
      };
    }