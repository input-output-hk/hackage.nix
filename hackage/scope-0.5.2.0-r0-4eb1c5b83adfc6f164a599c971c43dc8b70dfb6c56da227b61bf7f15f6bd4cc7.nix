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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "scope"; version = "0.5.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "conrad@metadecks.org";
      author = "Conrad Parker";
      homepage = "";
      url = "";
      synopsis = "An interactive renderer for plotting time-series data";
      description = "scope is a framework for plotting time-series data, using zoom-cache\nfiles.\n\nThis version includes a Gtk/Cairo application. It's a desktop\napplication with a /File/ menu; remember those? wow! This will probably\nbe split out into a separate package later, and there'll be a webby\njavascripty version too, but for now there's this desktop app.\n\nTo run it, simply:\n\n@\n\$ cabal install gtk2hs-buildtools scope\n\$ scope\n@\n\nThen, select /File->Open/ from the menubar, with your mouse: there's no\nswiping gestures back here, baby! Four (yes, 4) demo files are included\nin this version of the package. Choose one, and it will be drawn in the\nwindow. Amazing! It should look something like what you saw in the post\nyou read about this in, but more personal because now it's happening to\nyou.\n\nZoom in with the scroll wheel on your mouse. If you don't have a scroll\nwheel, use the Up and Down arrow keys on your keyboard. If you don't have\nup and down arrows /you are elite/!\n\nPan around by dragging it. There's a scrollbar too if you're into that.\n\nLoad up another file! It will also be drawn. Zoom in and out and pan\naround, yay! Life is gooood!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."cairo" or (buildDepError "cairo"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."iteratee" or (buildDepError "iteratee"))
          (hsPkgs."MonadCatchIO-transformers" or (buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."zoom-cache" or (buildDepError "zoom-cache"))
          ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "scope" = {
          depends = [
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."glib" or (buildDepError "glib"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."iteratee" or (buildDepError "iteratee"))
            (hsPkgs."ListLike" or (buildDepError "ListLike"))
            (hsPkgs."MonadCatchIO-transformers" or (buildDepError "MonadCatchIO-transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."zoom-cache" or (buildDepError "zoom-cache"))
            ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }