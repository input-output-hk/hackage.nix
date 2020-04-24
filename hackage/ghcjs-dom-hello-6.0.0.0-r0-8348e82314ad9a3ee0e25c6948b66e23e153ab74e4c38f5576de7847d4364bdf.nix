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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghcjs-dom" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-dom"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ] ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
          (hsPkgs."jsaddle" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle"))
          (hsPkgs."jsaddle-warp" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-warp"))
          ];
        buildable = true;
        };
      exes = {
        "ghcjs-dom-hello" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghcjs-dom-hello" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-dom-hello"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ] ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) (if system.isOsx || system.isIos
            then [
              (hsPkgs."jsaddle-wkwebview" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-wkwebview"))
              ]
            else if flags.webkit2gtk
              then [
                (hsPkgs."jsaddle-webkit2gtk" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-webkit2gtk"))
                ]
              else [
                (hsPkgs."jsaddle-webkitgtk" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-webkitgtk"))
                ]);
          buildable = true;
          };
        "ghcjs-dom-hello-warp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghcjs-dom" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-dom"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."ghcjs-dom-hello" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-dom-hello"))
            (hsPkgs."jsaddle-warp" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-warp"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = if !flags.warp || compiler.isGhcjs && true || system.isIos
            then false
            else true;
          };
        "ghcjs-dom-hello-webkitgtk" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghcjs-dom-hello" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-dom-hello"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ] ++ (if flags.webkit2gtk
            then [
              (hsPkgs."jsaddle-webkit2gtk" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-webkit2gtk"))
              ]
            else [
              (hsPkgs."jsaddle-webkitgtk" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-webkitgtk"))
              ]);
          buildable = if !flags.webkitgtk || compiler.isGhcjs && true || system.isIos
            then false
            else true;
          };
        "ghcjs-dom-hello-wkwebview" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghcjs-dom-hello" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-dom-hello"))
            (hsPkgs."jsaddle-wkwebview" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle-wkwebview"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = if !system.isOsx || compiler.isGhcjs && true
            then false
            else true;
          };
        };
      };
    }