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
    flags = { new-base = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "ffeed"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sof@forkio.com";
      author = "Sigbjorn Finne";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to the FriendFeed API";
      description = "The hs-ffeed API binding lets you access friendfeed.com's\nresources and methods from Haskell. Implements the\nfull API, as specified at http://code.google.com/p/friendfeed-api/wiki/ApiDocumentation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."json" or (buildDepError "json"))
          ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
        };
      exes = {
        "main" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        "showPublic" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          };
        "tweetStream" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          };
        };
      };
    }