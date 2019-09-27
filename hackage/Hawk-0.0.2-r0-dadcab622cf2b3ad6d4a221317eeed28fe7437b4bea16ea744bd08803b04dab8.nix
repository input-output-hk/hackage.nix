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
      specVersion = "1.6";
      identifier = { name = "Hawk"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Björn Peemöller <fh-wedel@gmx.de>, Stefan Roggensack, Alexander Treptow <alextreptow@gmx.de>";
      author = "Björn Peemöller, Stefan Roggensack, Alexander Treptow";
      homepage = "";
      url = "";
      synopsis = "Haskell Web Application Kit";
      description = "A library and framework to create Web Applications with Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."HDBC" or (buildDepError "HDBC"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."hslogger-template" or (buildDepError "hslogger-template"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."hack" or (buildDepError "hack"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."hxt" or (buildDepError "hxt"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."cgi" or (buildDepError "cgi"))
          (hsPkgs."SHA" or (buildDepError "SHA"))
          (hsPkgs."dataenc" or (buildDepError "dataenc"))
          (hsPkgs."HDBC-sqlite3" or (buildDepError "HDBC-sqlite3"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."MonadCatchIO-mtl" or (buildDepError "MonadCatchIO-mtl"))
          (hsPkgs."convertible" or (buildDepError "convertible"))
          (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
          (hsPkgs."json-b" or (buildDepError "json-b"))
          (hsPkgs."bytestring-trie" or (buildDepError "bytestring-trie"))
          ];
        buildable = true;
        };
      };
    }