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
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "spartacon"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@dmwit.com";
      author = "Daniel Wagner";
      homepage = "";
      url = "";
      synopsis = "A unix-style (read from stdin, write to stdout) global hotkey daemon";
      description = "__spartacon__ is a Unix-style global hotkey daemon. It embraces the philosophies of \"do one thing, and do it well\" and \"text in, text out\". It allows you to capture hotkeys on X11, without having any strong opinions about what actions should happen when those keys are pressed.\n\nThere are other hotkey applications out there; for example, modern desktop environments typically have a way to bind keys to actions, and there are standalone apps like <https://hyperkeys.xureilab.com/ HyperKeys>. Typically, these implementations assume that the thing you want to happen when a key is hit is to launch a process. If what you really want is to just add hotkey functionality to an existing application without it needing to know how to do that, those are typically not suitable, because the tool being controlled is already running.\n\nspartacon sits in that space: when you want to control a \"text in, text out\"-style program with hotkeys, this is the tool for you. (And if you decide to pipe spartacon to something that launches processes, that's no skin off my teeth!)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "spartacon" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."config-schema" or (errorHandler.buildDepError "config-schema"))
            (hsPkgs."config-value" or (errorHandler.buildDepError "config-value"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."relation" or (errorHandler.buildDepError "relation"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            ];
          buildable = true;
          };
        };
      };
    }