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
    flags = {
      use-warp = false;
      webkit2gtk = true;
      use-reflex-optimizer = false;
      expose-all-unfoldings = false;
      build-examples = false;
      android = false;
      };
    package = {
      specVersion = "1.24";
      identifier = { name = "reflex-dom"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ryan.trinkle@gmail.com";
      author = "Ryan Trinkle";
      homepage = "";
      url = "";
      synopsis = "Functional Reactive Web Apps with Reflex";
      description = "Reflex-DOM is a Functional Reactive web framework based on the Reflex FRP engine.\n\nFor hackage documentation, please see: <https://hackage.haskell.org/package/reflex-dom-core>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."reflex" or (buildDepError "reflex"))
          (hsPkgs."reflex-dom-core" or (buildDepError "reflex-dom-core"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (pkgs.lib).optionals (flags.android) [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."android-activity" or (buildDepError "android-activity"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."jsaddle" or (buildDepError "jsaddle"))
          ]) ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) (if system.isOsx || system.isIos
          then [
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."jsaddle" or (buildDepError "jsaddle"))
            (hsPkgs."jsaddle-wkwebview" or (buildDepError "jsaddle-wkwebview"))
            ]
          else if flags.use-warp
            then [
              (hsPkgs."jsaddle" or (buildDepError "jsaddle"))
              (hsPkgs."jsaddle-warp" or (buildDepError "jsaddle-warp"))
              ]
            else if flags.webkit2gtk
              then [
                (hsPkgs."jsaddle-webkit2gtk" or (buildDepError "jsaddle-webkit2gtk"))
                ]
              else (pkgs.lib).optional (!flags.android) (hsPkgs."jsaddle-webkit2gtk" or (buildDepError "jsaddle-webkit2gtk")));
        build-tools = (pkgs.lib).optional (flags.android) (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")));
        };
      exes = {
        "sortableList" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dependent-map" or (buildDepError "dependent-map"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."reflex-dom" or (buildDepError "reflex-dom"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."reflex-dom" or (buildDepError "reflex-dom"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."prim-uniq" or (buildDepError "prim-uniq"))
            (hsPkgs."dependent-map" or (buildDepError "dependent-map"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."ghcjs-dom" or (buildDepError "ghcjs-dom"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            ];
          };
        "krausest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."reflex-dom" or (buildDepError "reflex-dom"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."prim-uniq" or (buildDepError "prim-uniq"))
            (hsPkgs."dependent-map" or (buildDepError "dependent-map"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."ghcjs-dom" or (buildDepError "ghcjs-dom"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }