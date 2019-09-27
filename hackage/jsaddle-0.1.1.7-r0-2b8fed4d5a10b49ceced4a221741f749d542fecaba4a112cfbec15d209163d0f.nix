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
      ghcjs = true;
      gtk3 = true;
      jsffi = true;
      webkit = false;
      jmacro = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "jsaddle"; version = "0.1.1.7"; };
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
        depends = ((([
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (flags.ghcjs) (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))) ++ (pkgs.lib).optional (flags.ghcjs && flags.jsffi) (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))) ++ (pkgs.lib).optionals (!flags.ghcjs || flags.webkit) (if flags.gtk3
          then [
            (hsPkgs."webkitgtk3" or (buildDepError "webkitgtk3"))
            (hsPkgs."webkitgtk3-javascriptcore" or (buildDepError "webkitgtk3-javascriptcore"))
            ]
          else [
            (hsPkgs."webkit" or (buildDepError "webkit"))
            (hsPkgs."webkit-javascriptcore" or (buildDepError "webkit-javascriptcore"))
            ])) ++ (pkgs.lib).optional (flags.jmacro) (hsPkgs."jmacro" or (buildDepError "jmacro"));
        buildable = true;
        };
      tests = {
        "test-tool" = {
          depends = (([
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."jsaddle" or (buildDepError "jsaddle"))
            ] ++ (pkgs.lib).optional (flags.ghcjs && flags.jsffi) (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))) ++ (pkgs.lib).optionals (!flags.ghcjs || flags.webkit) ([
            (hsPkgs."glib" or (buildDepError "glib"))
            ] ++ (if flags.gtk3
            then [
              (hsPkgs."gtk3" or (buildDepError "gtk3"))
              (hsPkgs."webkitgtk3" or (buildDepError "webkitgtk3"))
              (hsPkgs."webkitgtk3-javascriptcore" or (buildDepError "webkitgtk3-javascriptcore"))
              ]
            else [
              (hsPkgs."gtk" or (buildDepError "gtk"))
              (hsPkgs."webkit" or (buildDepError "webkit"))
              (hsPkgs."webkit-javascriptcore" or (buildDepError "webkit-javascriptcore"))
              ]))) ++ (pkgs.lib).optional (flags.jmacro) (hsPkgs."jmacro" or (buildDepError "jmacro"));
          buildable = if flags.jsffi then false else true;
          };
        };
      };
    }