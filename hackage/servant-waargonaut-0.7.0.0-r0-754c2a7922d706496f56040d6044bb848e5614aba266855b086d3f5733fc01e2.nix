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
      identifier = { name = "servant-waargonaut"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 Commonwealth Scientific and Industrial Research Organisation (CSIRO)";
      maintainer = "oᴉ˙ldɟb@uɐǝs";
      author = "QFPL @ Data61";
      homepage = "";
      url = "";
      synopsis = "Servant Integration for Waargonaut JSON Package";
      description = "Provides the types and instances necessary to utilise Waargonaut as the JSON handling library for your Servant API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."waargonaut" or (buildDepError "waargonaut"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."wl-pprint-annotated" or (buildDepError "wl-pprint-annotated"))
          ];
        };
      tests = {
        "saarg" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."servant-waargonaut" or (buildDepError "servant-waargonaut"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."waargonaut" or (buildDepError "waargonaut"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."http-media" or (buildDepError "http-media"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."wl-pprint-annotated" or (buildDepError "wl-pprint-annotated"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-wai" or (buildDepError "tasty-wai"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }