{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { jsaddle = false; ios = false; };
    package = {
      specVersion = "1.22";
      identifier = { name = "miso-examples"; version = "1.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017-2020 David M. Johnson";
      maintainer = "David M. Johnson <djohnson.m@gmail.com>";
      author = "David M. Johnson <djohnson.m@gmail.com>";
      homepage = "http://github.com/dmjio/miso";
      url = "";
      synopsis = "A tasty Haskell front-end framework";
      description = "Examples for miso";
      buildType = "Simple";
      };
    components = {
      exes = {
        "todo-mvc" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle)) (([
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.miso)
            (hsPkgs.transformers)
            ] ++ (pkgs.lib).optional (flags.jsaddle) (hsPkgs.jsaddle)) ++ (if flags.ios
            then [ (hsPkgs.jsaddle-wkwebview) ]
            else [ (hsPkgs.jsaddle-warp) ]));
          };
        "threejs" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.ghcjs-base)
            (hsPkgs.containers)
            (hsPkgs.miso)
            ];
          };
        "file-reader" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.ghcjs-base)
            (hsPkgs.miso)
            ];
          };
        "xhr" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.ghcjs-base)
            (hsPkgs.miso)
            ];
          };
        "canvas2d" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.ghcjs-base)
            (hsPkgs.miso)
            ];
          };
        "router" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle)) (([
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.miso)
            (hsPkgs.servant)
            (hsPkgs.transformers)
            ] ++ (pkgs.lib).optional (flags.jsaddle) (hsPkgs.jsaddle)) ++ (if flags.ios
            then [ (hsPkgs.jsaddle-wkwebview) ]
            else [ (hsPkgs.jsaddle-warp) ]));
          };
        "websocket" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle)) (([
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.miso)
            (hsPkgs.transformers)
            ] ++ (pkgs.lib).optional (flags.jsaddle) (hsPkgs.jsaddle)) ++ (if flags.ios
            then [ (hsPkgs.jsaddle-wkwebview) ]
            else [ (hsPkgs.jsaddle-warp) ]));
          };
        "mario" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle)) (((([
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.miso)
            ] ++ (pkgs.lib).optional (flags.jsaddle) (hsPkgs.jsaddle)) ++ (pkgs.lib).optionals (flags.jsaddle && !(compiler.isGhcjs && true) && !flags.ios) [
            (hsPkgs.wai)
            (hsPkgs.wai-app-static)
            (hsPkgs.warp)
            (hsPkgs.websockets)
            ]) ++ (pkgs.lib).optional (flags.ios && !(compiler.isGhcjs && true)) (hsPkgs.jsaddle-wkwebview)) ++ (pkgs.lib).optional (!flags.ios) (hsPkgs.jsaddle-warp));
          };
        "svg" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.aeson)
            (hsPkgs.miso)
            ];
          };
        "compose-update" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs.base)
            (hsPkgs.miso)
            ];
          };
        "mathml" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true))) [
            (hsPkgs.base)
            (hsPkgs.miso)
            ];
          };
        };
      };
    }