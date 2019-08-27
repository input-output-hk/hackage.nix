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
      specVersion = "1.2";
      identifier = { name = "source-code-server"; version = "2010.9.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "http://github.com/nfjinjing/source-code-server";
      url = "";
      synopsis = "The server backend for the source code iPhone app";
      description = "a reference implementation, such that an android equivalent is less of work";
      buildType = "Simple";
      };
    components = {
      exes = {
        "source-code-server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mps" or (buildDepError "mps"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hack" or (buildDepError "hack"))
            (hsPkgs."hack-contrib" or (buildDepError "hack-contrib"))
            (hsPkgs."hack-handler-happstack" or (buildDepError "hack-handler-happstack"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."loli" or (buildDepError "loli"))
            (hsPkgs."StateVar" or (buildDepError "StateVar"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."curl" or (buildDepError "curl"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HDBC-sqlite3" or (buildDepError "HDBC-sqlite3"))
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            ];
          };
        };
      };
    }