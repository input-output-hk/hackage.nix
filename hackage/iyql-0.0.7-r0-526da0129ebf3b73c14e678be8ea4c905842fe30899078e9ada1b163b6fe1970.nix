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
      identifier = { name = "iyql"; version = "0.0.7"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Diego Souza <dsouza+iyql at bitforest.org>";
      author = "Diego Souza <dsouza+iyql at bitforest.org>";
      homepage = "";
      url = "";
      synopsis = "CLI (command line interface) to YQL";
      description = "Similar to popular database frontend interfaces like sqlite3, this\nproject provides a full featured CLI for YQL.\nIt extends YQL introducing the concept of of location functions.\nThese have the same concept of YQL functions except they are\nintercepted by the program itself and executed locally. For\ninstance, changing the format to json or turning diagnostics on\nare examples of such functions.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "iyql" = {
          depends = [
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hoauth" or (buildDepError "hoauth"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            ];
          };
        };
      };
    }