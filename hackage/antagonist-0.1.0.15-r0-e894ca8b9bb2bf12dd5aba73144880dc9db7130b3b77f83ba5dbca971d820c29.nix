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
      identifier = { name = "antagonist"; version = "0.1.0.15"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "marvin.cohrs@gmx.net";
      author = "Marvin Cohrs";
      homepage = "";
      url = "";
      synopsis = "A web interface to Antisplice dungeons.";
      description = "A web interface to Antisplice dungeons, implemented as a yesod subsite.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."yesod" or (buildDepError "yesod"))
          (hsPkgs."antisplice" or (buildDepError "antisplice"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."chatty" or (buildDepError "chatty"))
          (hsPkgs."shakespeare-text" or (buildDepError "shakespeare-text"))
          (hsPkgs."hamlet" or (buildDepError "hamlet"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."shakespeare-css" or (buildDepError "shakespeare-css"))
          (hsPkgs."shakespeare-js" or (buildDepError "shakespeare-js"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          ];
        };
      exes = {
        "ironforge-yesod" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."antisplice" or (buildDepError "antisplice"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."chatty" or (buildDepError "chatty"))
            (hsPkgs."shakespeare-text" or (buildDepError "shakespeare-text"))
            (hsPkgs."hamlet" or (buildDepError "hamlet"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."shakespeare-css" or (buildDepError "shakespeare-css"))
            (hsPkgs."shakespeare-js" or (buildDepError "shakespeare-js"))
            (hsPkgs."ironforge" or (buildDepError "ironforge"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            ];
          };
        };
      };
    }