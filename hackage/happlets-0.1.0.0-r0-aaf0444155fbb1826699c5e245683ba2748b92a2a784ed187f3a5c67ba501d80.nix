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
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "happlets"; version = "0.1.0.0"; };
      license = "LicenseRef-AGPL";
      copyright = "(C) 2017-2018 Ramin Honary, all rights reserved.";
      maintainer = "RaminHAL9001@gmail.com";
      author = "Ramin Honary";
      homepage = "https://github.com/RaminHAL9001/happlets";
      url = "";
      synopsis = "\"Haskell Applets\" provides an event handler and a canvas for building simple GUI apps.";
      description = "\nThis package is provides the Happlets API that is common to all Happlet\nback-end provider libraries. Along with this package, it is necessary to\ninstall a back-end library such as 'happlets-lib-gtk'.  Currently Gtk+\nversion 2 with a Cairo-based canvas is the only back-end available. Gtk+\nversion 3, Xlib, SDL2, GLUT, and (possibly) Wayland back-ends are all\nfeasible and may be implemented in the future.\n\nThe goal of the Happlets project is to allow you to create very simple,\nthread-safe applications that contain nothing more than a single window\nwith a drawing canvas that can respond to user input events, like mouse\nclicks, key-presses, or frame animation events. The intention is to\ncreate a minimal programming platform for small, single-purpose\ngraphical applications which simply displays some interactive graphic,\nfor example a plot of some data, or a simple game. Naturally, the\nHapplet program can be arbitrarily complex, but it may be better to\nconsider other, FRP-based solutions if managing events becomes too\ndifficult.\n\nA happlet back-end provider may provide additional widget API functions,\nbut using these APIs will result in your applet being dependent on the\nspecific back-end and will thus not be as portable as programming for\nthe \"happlets\" package alone. Happlets aims to achieve a balance between\nbeing as minimal as possible, but still provide enough graphics drawing\nprimitives to be useful for the widest range of possible applications.\n\nThe Gtk+ v2 back-end provider can be downloaded from this link:\n\nhttps://hackage.haskell.org/package/happlets-lib-gtk\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."fail" or (buildDepError "fail"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      };
    }