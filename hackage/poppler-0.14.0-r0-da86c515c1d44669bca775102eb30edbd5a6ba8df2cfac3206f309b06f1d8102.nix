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
    flags = { gtk3 = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "poppler"; version = "0.14.0"; };
      license = "GPL-2.0-only";
      copyright = "(c) 2001-2012, 2014-2016 The Gtk2Hs Team";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Andy Stewart";
      homepage = "http://projects.haskell.org/gtk2hs";
      url = "";
      synopsis = "Binding to the Poppler.";
      description = "Poppler is a fork of the xpdf PDF viewer, to provide PDF rendering functionality as a shared\nlibrary, to centralize the maintenance effort.\nAnd move to forward in a number of areas that don't fit within the goals of xpdf.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."glib" or (buildDepError "glib"))
          (hsPkgs."cairo" or (buildDepError "cairo"))
          ] ++ (if flags.gtk3
          then [ (hsPkgs."gtk3" or (buildDepError "gtk3")) ]
          else [ (hsPkgs."gtk" or (buildDepError "gtk")) ]);
        pkgconfig = if flags.gtk3
          then [
            (pkgconfPkgs."poppler-glib" or (pkgConfDepError "poppler-glib"))
            (pkgconfPkgs."cairo" or (pkgConfDepError "cairo"))
            (pkgconfPkgs."gdk-3.0" or (pkgConfDepError "gdk-3.0"))
            (pkgconfPkgs."pango" or (pkgConfDepError "pango"))
            ]
          else [
            (pkgconfPkgs."poppler-glib" or (pkgConfDepError "poppler-glib"))
            (pkgconfPkgs."gobject-2.0" or (pkgConfDepError "gobject-2.0"))
            (pkgconfPkgs."glib-2.0" or (pkgConfDepError "glib-2.0"))
            (pkgconfPkgs."cairo" or (pkgConfDepError "cairo"))
            (pkgconfPkgs."gdk-2.0" or (pkgConfDepError "gdk-2.0"))
            (pkgconfPkgs."gdk-pixbuf-2.0" or (pkgConfDepError "gdk-pixbuf-2.0"))
            (pkgconfPkgs."pango" or (pkgConfDepError "pango"))
            ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs or (buildToolDepError "gtk2hsC2hs")))
          (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator or (buildToolDepError "gtk2hsHookGenerator")))
          (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen or (buildToolDepError "gtk2hsTypeGen")))
          ];
        buildable = true;
        };
      };
    }