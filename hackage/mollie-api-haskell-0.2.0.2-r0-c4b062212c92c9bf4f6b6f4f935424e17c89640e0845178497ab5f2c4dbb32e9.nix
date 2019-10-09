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
      identifier = { name = "mollie-api-haskell"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Paramander";
      maintainer = "mats@paramander.com";
      author = "Paramander";
      homepage = "https://github.com/paramander/mollie-api-haskell";
      url = "";
      synopsis = "Mollie API client for Haskell http://www.mollie.com";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-openssl" or (buildDepError "http-client-openssl"))
          (hsPkgs."HsOpenSSL" or (buildDepError "HsOpenSSL"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "mollie-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mollie-api-haskell" or (buildDepError "mollie-api-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }