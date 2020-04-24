{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      ghcjs = true;
      gtk3 = true;
      jsffi = true;
      webkit = false;
      jmacro = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "jsaddle"; version = "0.1.1.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
      author = "Hamish Mackenzie";
      homepage = "";
      url = "";
      synopsis = "High level interface for webkit-javascriptcore";
      description = "This package provides an EDSL for calling JavaScript code using\nthe JavaScriptCore engine and low level Haskell bindings\nin the webkit-javascriptcore library <https://github.com/ghcjs/webkit-javascriptcore>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (flags.ghcjs && flags.jsffi) (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))) ++ (pkgs.lib).optionals (!flags.ghcjs || flags.webkit) (if flags.gtk3
          then [
            (hsPkgs."webkitgtk3" or ((hsPkgs.pkgs-errors).buildDepError "webkitgtk3"))
            (hsPkgs."webkitgtk3-javascriptcore" or ((hsPkgs.pkgs-errors).buildDepError "webkitgtk3-javascriptcore"))
            ]
          else [
            (hsPkgs."webkit" or ((hsPkgs.pkgs-errors).buildDepError "webkit"))
            (hsPkgs."webkit-javascriptcore" or ((hsPkgs.pkgs-errors).buildDepError "webkit-javascriptcore"))
            ])) ++ (pkgs.lib).optional (flags.jmacro) (hsPkgs."jmacro" or ((hsPkgs.pkgs-errors).buildDepError "jmacro"));
        buildable = true;
        };
      tests = {
        "test-tool" = {
          depends = (([
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."jsaddle" or ((hsPkgs.pkgs-errors).buildDepError "jsaddle"))
            ] ++ (pkgs.lib).optional (flags.ghcjs && flags.jsffi) (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))) ++ (pkgs.lib).optionals (!flags.ghcjs || flags.webkit) ([
            (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
            ] ++ (if flags.gtk3
            then [
              (hsPkgs."gtk3" or ((hsPkgs.pkgs-errors).buildDepError "gtk3"))
              (hsPkgs."webkitgtk3" or ((hsPkgs.pkgs-errors).buildDepError "webkitgtk3"))
              (hsPkgs."webkitgtk3-javascriptcore" or ((hsPkgs.pkgs-errors).buildDepError "webkitgtk3-javascriptcore"))
              ]
            else [
              (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
              (hsPkgs."webkit" or ((hsPkgs.pkgs-errors).buildDepError "webkit"))
              (hsPkgs."webkit-javascriptcore" or ((hsPkgs.pkgs-errors).buildDepError "webkit-javascriptcore"))
              ]))) ++ (pkgs.lib).optional (flags.jmacro) (hsPkgs."jmacro" or ((hsPkgs.pkgs-errors).buildDepError "jmacro"));
          buildable = if flags.jsffi then false else true;
          };
        };
      };
    }