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
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-reflex"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "imalsogreg@gmail.com";
      author = "Greg Hale, Doug Beardsley";
      homepage = "";
      url = "";
      synopsis = "servant API generator for reflex apps";
      description = "Generate reflex-compatible client functions from servant API descriptions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."ghcjs-dom" or (buildDepError "ghcjs-dom"))
          (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
          (hsPkgs."http-media" or (buildDepError "http-media"))
          (hsPkgs."jsaddle" or (buildDepError "jsaddle"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."reflex" or (buildDepError "reflex"))
          (hsPkgs."reflex-dom-core" or (buildDepError "reflex-dom-core"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."servant-auth" or (buildDepError "servant-auth"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."servant-reflex" or (buildDepError "servant-reflex"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."reflex-dom" or (buildDepError "reflex-dom"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }