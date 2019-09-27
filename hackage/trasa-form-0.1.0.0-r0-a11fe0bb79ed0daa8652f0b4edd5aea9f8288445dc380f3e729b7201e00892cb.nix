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
      specVersion = "2.0";
      identifier = { name = "trasa-form"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "zacharyachurchill@gmail.com";
      author = "goolord";
      homepage = "";
      url = "";
      synopsis = "generate forms using lucid, ditto and trasa";
      description = "Formlets library for trasa using ditto as its backend.\nAlthough trasa already has machinery for creating\ntypesafe forms, this library with ditto allow a more\ncomposable approach to form generation/validation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
          (hsPkgs."cookie" or (buildDepError "cookie"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."lucid" or (buildDepError "lucid"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."quantification" or (buildDepError "quantification"))
          (hsPkgs."ditto" or (buildDepError "ditto"))
          (hsPkgs."ditto-lucid" or (buildDepError "ditto-lucid"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."trasa" or (buildDepError "trasa"))
          (hsPkgs."trasa-server" or (buildDepError "trasa-server"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "test-server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."lucid" or (buildDepError "lucid"))
            (hsPkgs."quantification" or (buildDepError "quantification"))
            (hsPkgs."ditto" or (buildDepError "ditto"))
            (hsPkgs."ditto-lucid" or (buildDepError "ditto-lucid"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."trasa" or (buildDepError "trasa"))
            (hsPkgs."trasa-extra" or (buildDepError "trasa-extra"))
            (hsPkgs."trasa-form" or (buildDepError "trasa-form"))
            (hsPkgs."trasa-server" or (buildDepError "trasa-server"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      };
    }