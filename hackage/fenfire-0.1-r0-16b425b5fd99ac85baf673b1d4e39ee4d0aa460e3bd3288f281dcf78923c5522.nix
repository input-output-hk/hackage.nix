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
      specVersion = "0";
      identifier = { name = "fenfire"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "fenfire-dev@nongnu.org";
      author = "Benja Fallenstein and Tuukka Hastrup";
      homepage = "http://fenfire.org/";
      url = "";
      synopsis = "Graph-based notetaking system";
      description = "Fenfire is a graph-based notetaking system. (We're\nplanning to add a kitchen sink soon.) It is developed\non the channel #fenfire on the Freenode IRC network.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "fenfire" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."harp" or (buildDepError "harp"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          libs = [ (pkgs."raptor" or (sysDepError "raptor")) ];
          buildable = true;
          };
        "functortest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."harp" or (buildDepError "harp"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        "vobtest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."harp" or (buildDepError "harp"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        "darcs2rdf" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."harp" or (buildDepError "harp"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }