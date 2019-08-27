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
    flags = { shows = true; bytestring = true; doc = true; text = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "to-string-instances"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2009 Bas van Dijk <v.dijk.bas@gmail.com>";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Instances for the ToString class.";
      description = "This library provides the following instances\nfor the ToString class:\n\n* ShowS\n\n* ByteString\n\n* DString\n\n* Doc\n\n* Text\n\nNote that the instances can be enabled or disabled\nbased on cabal flags.\n\nThe idea is that eventually all packages providing string-like\ntypes will provide instances for ToString themselves.\nIn the mean time this package is here to provide them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."to-string-class" or (buildDepError "to-string-class"))
          ] ++ (pkgs.lib).optional (flags.shows) (hsPkgs."base" or (buildDepError "base"))) ++ (pkgs.lib).optional (flags.bytestring) (hsPkgs."bytestring" or (buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.doc) (hsPkgs."pretty" or (buildDepError "pretty"))) ++ (pkgs.lib).optional (flags.text) (hsPkgs."text" or (buildDepError "text"));
        };
      };
    }