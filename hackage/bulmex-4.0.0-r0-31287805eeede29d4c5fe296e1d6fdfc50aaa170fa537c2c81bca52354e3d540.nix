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
      specVersion = "1.12";
      identifier = { name = "bulmex"; version = "4.0.0"; };
      license = "MIT";
      copyright = "2018 Jappie Klooster";
      maintainer = "jappieklooster@hotmail.com";
      author = "Jappie Klooster";
      homepage = "https://github.com/jappeace/bulmex#readme";
      url = "";
      synopsis = "Reflex infused with bulma (css)";
      description = "Reflex infused with bulma, [Implements](https://hackage.haskell.org/package/bulmex/docs/Reflex-Bulmex-Modal.html) the [modal](https://bulma.io/documentation/components/modal/) for example. Also has helper functions for common tasks. such as making server side rendering easier. See related [blogpost](https://jappieklooster.nl/reflex-server-side-html-rendering.html).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
          (hsPkgs."jsaddle" or (buildDepError "jsaddle"))
          (hsPkgs."jsaddle-dom" or (buildDepError "jsaddle-dom"))
          (hsPkgs."keycode" or (buildDepError "keycode"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."reflex" or (buildDepError "reflex"))
          (hsPkgs."reflex-dom-core" or (buildDepError "reflex-dom-core"))
          (hsPkgs."reflex-dom-helpers" or (buildDepError "reflex-dom-helpers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."witherable" or (buildDepError "witherable"))
          ];
        buildable = true;
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
            (hsPkgs."jsaddle" or (buildDepError "jsaddle"))
            (hsPkgs."jsaddle-dom" or (buildDepError "jsaddle-dom"))
            (hsPkgs."keycode" or (buildDepError "keycode"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."reflex-dom-core" or (buildDepError "reflex-dom-core"))
            (hsPkgs."reflex-dom-helpers" or (buildDepError "reflex-dom-helpers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."witherable" or (buildDepError "witherable"))
            ];
          buildable = true;
          };
        };
      };
    }