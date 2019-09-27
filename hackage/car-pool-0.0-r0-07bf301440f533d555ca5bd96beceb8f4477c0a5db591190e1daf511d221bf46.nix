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
      specVersion = "1.8";
      identifier = { name = "car-pool"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann";
      homepage = "http://code.haskell.org/~thielema/car-pool/";
      url = "";
      synopsis = "Simple web-server for organizing car-pooling for an event";
      description = "Simple web-server for organizing car-pooling for an event";
      buildType = "Simple";
      };
    components = {
      exes = {
        "car-pool" = {
          depends = [
            (hsPkgs."spreadsheet" or (buildDepError "spreadsheet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."digestive-functors-blaze" or (buildDepError "digestive-functors-blaze"))
            (hsPkgs."digestive-functors-happstack" or (buildDepError "digestive-functors-happstack"))
            (hsPkgs."digestive-functors" or (buildDepError "digestive-functors"))
            (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }