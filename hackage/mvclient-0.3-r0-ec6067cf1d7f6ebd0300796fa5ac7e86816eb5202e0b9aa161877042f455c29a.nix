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
    flags = { network-bytestring = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "mvclient"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cdsmith@gmail.com";
      author = "Chris Smith";
      homepage = "";
      url = "";
      synopsis = "Client library for metaverse systems like Second Life";
      description = "The client side of connections to virtual world environments\nlike Linden Labs' Second Life, sometimes known as the\n\"metaverse\".\n\nAs of version 0.3, no longer requires an stunnel proxy for\nconnecting to Second Life.  Thanks for Michael Snoyman and\nhis http-enumerator package!";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."Crypto" or (buildDepError "Crypto"))
          (hsPkgs."maccatcher" or (buildDepError "maccatcher"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."data-binary-ieee754" or (buildDepError "data-binary-ieee754"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."control-event" or (buildDepError "control-event"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."http-enumerator" or (buildDepError "http-enumerator"))
          (hsPkgs."hexpat" or (buildDepError "hexpat"))
          ] ++ (if flags.network-bytestring
          then [
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-bytestring" or (buildDepError "network-bytestring"))
            ]
          else [ (hsPkgs."network" or (buildDepError "network")) ]);
        };
      };
    }