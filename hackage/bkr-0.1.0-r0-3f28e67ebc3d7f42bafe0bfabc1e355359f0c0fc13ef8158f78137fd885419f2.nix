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
      identifier = { name = "bkr"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Michael Smietana";
      maintainer = "Michael Smietana <michael@smietana.se>";
      author = "Michael Smietana <michael@smietana.se>";
      homepage = "https://github.com/ingesson/bkr";
      url = "";
      synopsis = "Backup utility for backing up to cloud storage services (S3 only right now)";
      description = "Easy to use backup tool utilizing cloud services (S3 only right now) as backup storage.\nbkr is in very early development stage. Right now bkr is rather a synchronization then a backup utility. bkr uploads files from wanted folders to a remote storage service, next time it runs it checks for changes and uploads new or altered files but does not keep copies of altered files (hence rather synchronization then backup). For more information about installation and setup please visit \"https://github.com/ingesson/bkr\". All suggestions and bug reports are of course more then welcome.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."aws" or (buildDepError "aws"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."HDBC-sqlite3" or (buildDepError "HDBC-sqlite3"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."HDBC" or (buildDepError "HDBC"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          ];
        };
      exes = {
        "bkr" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."aws" or (buildDepError "aws"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."HDBC-sqlite3" or (buildDepError "HDBC-sqlite3"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            ];
          };
        };
      };
    }