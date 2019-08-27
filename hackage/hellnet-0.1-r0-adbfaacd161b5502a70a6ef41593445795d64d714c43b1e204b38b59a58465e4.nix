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
      specVersion = "1.4";
      identifier = { name = "hellnet"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "voker57@gmail.com";
      author = "Voker57";
      homepage = "http://bitcheese.net/wiki/hellnet/hspawn";
      url = "";
      synopsis = "Simple, distributed, anonymous data sharing network.";
      description = "Hellnet is a project to create simple, distributed, anonymous data sharing network.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."Crypto" or (buildDepError "Crypto"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."hjpath" or (buildDepError "hjpath"))
          (hsPkgs."hjson" or (buildDepError "hjson"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."RSA" or (buildDepError "RSA"))
          (hsPkgs."uri" or (buildDepError "uri"))
          ];
        };
      exes = {
        "hell-insert" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "hell-get" = {
          depends = [ (hsPkgs."regex-posix" or (buildDepError "regex-posix")) ];
          };
        "hell-meta" = {};
        "hell-nodes" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "hell-fsck" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "hell-serve" = {
          depends = [
            (hsPkgs."Lucu" or (buildDepError "Lucu"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        };
      };
    }