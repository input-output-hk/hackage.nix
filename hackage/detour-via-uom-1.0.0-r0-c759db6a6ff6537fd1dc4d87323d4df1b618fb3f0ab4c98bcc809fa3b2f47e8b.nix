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
      identifier = { name = "detour-via-uom"; version = "1.0.0"; };
      license = "MPL-2.0";
      copyright = "© 2017-2018 Phil de Joux, © 2017-2018 Block Scope Limited";
      maintainer = "phil.dejoux@blockscope.com";
      author = "Phil de Joux";
      homepage = "https://github.com/blockscope/flare-timing/tree/master/detour-via-uom#readme";
      url = "";
      synopsis = "JSON and CSV encoding for quantities.";
      description = "Lossy JSON and CSV encoding and decoding for newtype quantities via scientific with fixed decimal places and with units.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."cassava" or (buildDepError "cassava"))
          (hsPkgs."detour-via-sci" or (buildDepError "detour-via-sci"))
          (hsPkgs."newtype" or (buildDepError "newtype"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."uom-plugin" or (buildDepError "uom-plugin"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."detour-via-sci" or (buildDepError "detour-via-sci"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."newtype" or (buildDepError "newtype"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."uom-plugin" or (buildDepError "uom-plugin"))
            ];
          buildable = true;
          };
        "hlint" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."detour-via-sci" or (buildDepError "detour-via-sci"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            (hsPkgs."newtype" or (buildDepError "newtype"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."uom-plugin" or (buildDepError "uom-plugin"))
            ];
          buildable = true;
          };
        };
      };
    }