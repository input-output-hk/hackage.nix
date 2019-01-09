{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { warp = true; webkitgtk = true; webkit2gtk = true; };
    package = {
      specVersion = "1.24";
      identifier = { name = "ghcjs-dom-hello"; version = "6.0.0.0"; };
      license = "MIT";
      copyright = "(c) Hamish Mackenzie";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@gmail.com>";
      author = "Hamish Mackenzie";
      homepage = "https://github.com/ghcjs/ghcjs-dom-hello";
      url = "";
      synopsis = "GHCJS DOM Hello World, an example package";
      description = "This is an implementation of the classic \"Hello World\" program using GHCJS DOM,\nas an example of how to create a minimal GHCJS DOM application.\nPlease submit any suggestions and improvements.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghcjs-dom)
          (hsPkgs.mtl)
          ] ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
          (hsPkgs.jsaddle)
          (hsPkgs.jsaddle-warp)
          ];
        };
      exes = {
        "ghcjs-dom-hello" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghcjs-dom-hello)
            (hsPkgs.mtl)
            ] ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) (if system.isOsx || system.isIos
            then [ (hsPkgs.jsaddle-wkwebview) ]
            else if flags.webkit2gtk
              then [ (hsPkgs.jsaddle-webkit2gtk) ]
              else [ (hsPkgs.jsaddle-webkitgtk) ]);
          };
        "ghcjs-dom-hello-warp" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghcjs-dom)
            (hsPkgs.mtl)
            (hsPkgs.ghcjs-dom-hello)
            (hsPkgs.jsaddle-warp)
            (hsPkgs.mtl)
            ];
          };
        "ghcjs-dom-hello-webkitgtk" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghcjs-dom-hello)
            (hsPkgs.mtl)
            ] ++ (if flags.webkit2gtk
            then [ (hsPkgs.jsaddle-webkit2gtk) ]
            else [ (hsPkgs.jsaddle-webkitgtk) ]);
          };
        "ghcjs-dom-hello-wkwebview" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghcjs-dom-hello)
            (hsPkgs.jsaddle-wkwebview)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }