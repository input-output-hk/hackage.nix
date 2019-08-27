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
      identifier = { name = "mvclient"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cdsmith@gmail.com";
      author = "Chris Smith";
      homepage = "";
      url = "";
      synopsis = "Client library for metaverse systems like Second Life";
      description = "This implements the client side of connections to virtual world environments\nlike Linden Labs' Second Life or OpenSim (http://opesimulator.org), sometimes\nknown as the \"metaverse\".\n\nBecause of the lack of SSL implementations for Haskell, you currently need\nto set up stunnel for initial login step for worlds (like Second Life) that\nuse secure login pages.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."Crypto" or (buildDepError "Crypto"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."maccatcher" or (buildDepError "maccatcher"))
          (hsPkgs."haxr" or (buildDepError "haxr"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."network-bytestring" or (buildDepError "network-bytestring"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."data-binary-ieee754" or (buildDepError "data-binary-ieee754"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."control-event" or (buildDepError "control-event"))
          ];
        };
      };
    }