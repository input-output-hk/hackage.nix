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
      identifier = { name = "nomyx-api"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Corentin Dupont";
      maintainer = "corentin.dupont@gmail.com";
      author = "Corentin Dupont";
      homepage = "http://www.nomyx.net";
      url = "";
      synopsis = "REST API for Nomyx";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."servant-client" or (buildDepError "servant-client"))
          (hsPkgs."servant-server" or (buildDepError "servant-server"))
          (hsPkgs."servant-swagger" or (buildDepError "servant-swagger"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-cors" or (buildDepError "wai-cors"))
          (hsPkgs."swagger2" or (buildDepError "swagger2"))
          (hsPkgs."nomyx-language" or (buildDepError "nomyx-language"))
          (hsPkgs."nomyx-core" or (buildDepError "nomyx-core"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          ];
        };
      };
    }