{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {
      use-warp = false;
      webkit2gtk = true;
      use-reflex-optimizer = false;
      expose-all-unfoldings = false;
      build-examples = false;
    };
    package = {
      specVersion = "1.24";
      identifier = { name = "reflex-dom"; version = "0.5.3"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."reflex-dom-core" or (errorHandler.buildDepError "reflex-dom-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optionals (system.isAndroid) [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."android-activity" or (errorHandler.buildDepError "android-activity"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
        ]) ++ pkgs.lib.optionals (!(compiler.isGhcjs && true)) (if flags.use-warp && (system.isLinux || system.isOsx)
          then [
            (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
            (hsPkgs."jsaddle-warp" or (errorHandler.buildDepError "jsaddle-warp"))
          ]
          else if system.isOsx || system.isIos
            then [
              (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
              (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
              (hsPkgs."jsaddle-wkwebview" or (errorHandler.buildDepError "jsaddle-wkwebview"))
            ]
            else if flags.webkit2gtk
              then [
                (hsPkgs."jsaddle-webkit2gtk" or (errorHandler.buildDepError "jsaddle-webkit2gtk"))
              ]
              else pkgs.lib.optional (!system.isAndroid) (hsPkgs."jsaddle-webkit2gtk" or (errorHandler.buildDepError "jsaddle-webkit2gtk")));
        build-tools = pkgs.lib.optional (system.isAndroid) (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
        buildable = true;
      };
      exes = {
        "sortableList" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-dom" or (errorHandler.buildDepError "reflex-dom"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = if !flags.build-examples then false else true;
        };
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-dom" or (errorHandler.buildDepError "reflex-dom"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."prim-uniq" or (errorHandler.buildDepError "prim-uniq"))
            (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          ];
          buildable = if !(compiler.isGhcjs && true) then false else true;
        };
        "krausest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-dom" or (errorHandler.buildDepError "reflex-dom"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."prim-uniq" or (errorHandler.buildDepError "prim-uniq"))
            (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if compiler.isGhcjs && true then true else false;
        };
      };
    };
  }