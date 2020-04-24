{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
          (hsPkgs."reflex-dom-core" or ((hsPkgs.pkgs-errors).buildDepError "reflex-dom-core"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ] ++ (pkgs.lib).optionals (flags.android) [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."android-activity" or ((hsPkgs.pkgs-errors).buildDepError "android-activity"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."jsaddle" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle"))
          ]) ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) (if system.isOsx || system.isIos
          then [
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."jsaddle" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle"))
            (hsPkgs."jsaddle-wkwebview" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-wkwebview"))
            ]
          else if flags.use-warp
            then [
              (hsPkgs."jsaddle" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle"))
              (hsPkgs."jsaddle-warp" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-warp"))
              ]
            else if flags.webkit2gtk
              then [
                (hsPkgs."jsaddle-webkit2gtk" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-webkit2gtk"))
                ]
              else (pkgs.lib).optional (!flags.android) (hsPkgs."jsaddle-webkit2gtk" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-webkit2gtk")));
        build-tools = (pkgs.lib).optional (flags.android) (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")));
        buildable = true;
        };
      exes = {
        "sortableList" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."dependent-map" or ((hsPkgs.pkgs-errors).buildDepError "dependent-map"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
            (hsPkgs."reflex-dom" or ((hsPkgs.pkgs-errors).buildDepError "reflex-dom"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        "benchmark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
            (hsPkgs."reflex-dom" or ((hsPkgs.pkgs-errors).buildDepError "reflex-dom"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."prim-uniq" or ((hsPkgs.pkgs-errors).buildDepError "prim-uniq"))
            (hsPkgs."dependent-map" or ((hsPkgs.pkgs-errors).buildDepError "dependent-map"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."ghcjs-dom" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-dom"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."dependent-sum" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum"))
            ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
          };
        "krausest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
            (hsPkgs."reflex-dom" or ((hsPkgs.pkgs-errors).buildDepError "reflex-dom"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."prim-uniq" or ((hsPkgs.pkgs-errors).buildDepError "prim-uniq"))
            (hsPkgs."dependent-map" or ((hsPkgs.pkgs-errors).buildDepError "dependent-map"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."ghcjs-dom" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-dom"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."dependent-sum" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if compiler.isGhcjs && true then true else false;
          };
        };
      };
    }