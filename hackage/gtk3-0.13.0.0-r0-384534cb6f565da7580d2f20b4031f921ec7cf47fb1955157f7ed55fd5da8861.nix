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
      have-gio = true;
      have-quartz-gtk = false;
      build-demos = false;
      fmode-binary = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "gtk3"; version = "0.13.0.0"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@lists.sourceforge.net";
      author = "Axel Simon, Duncan Coutts and many others";
      homepage = "http://projects.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the Gtk+ graphical user interface library.";
      description = "This is the core library of the Gtk2Hs suite of libraries for Haskell\nbased on Gtk+. Gtk+ is an extensive and mature multi-platform toolkit\nfor creating graphical user interfaces.";
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
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."glib" or (buildDepError "glib"))
          (hsPkgs."pango" or (buildDepError "pango"))
          (hsPkgs."cairo" or (buildDepError "cairo"))
          ] ++ (pkgs.lib).optional (flags.have-gio) (hsPkgs."gio" or (buildDepError "gio"));
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or (sysDepError "kernel32"));
        pkgconfig = [
          (pkgconfPkgs."gthread-2.0" or (pkgConfDepError "gthread-2.0"))
          (pkgconfPkgs."gtk+-3.0" or (pkgConfDepError "gtk+-3.0"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs or (buildToolDepError "gtk2hsC2hs")))
          (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator or (buildToolDepError "gtk2hsHookGenerator")))
          (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen or (buildToolDepError "gtk2hsTypeGen")))
          ];
        buildable = true;
        };
      exes = {
        "gtk2hs-demo-actionMenu" = {
          depends = [
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if !flags.build-demos then false else true;
          };
        "gtk2hs-demo-buttonBox" = {
          depends = [
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = if !flags.build-demos then false else true;
          };
        "gtk2hs-demo-carsim" = {
          depends = [
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            ];
          buildable = if !flags.build-demos then false else true;
          };
        "gtk2hs-demo-progress" = {
          depends = [
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = if !flags.build-demos then false else true;
          };
        "gtk2hs-demo-progressThreadedRTS" = {
          depends = [
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = if !flags.build-demos then false else true;
          };
        "gtk2hs-demo-fastDraw" = {
          depends = [
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            ];
          buildable = if !flags.build-demos then false else true;
          };
        "gtk2hs-demo-fonts" = {
          depends = [
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if !flags.build-demos then false else true;
          };
        "gtk2hs-demo-builder" = {
          depends = [
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = if !flags.build-demos then false else true;
          };
        "gtk2hs-demo-helloworld" = {
          depends = [
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = if !flags.build-demos then false else true;
          };
        "gtk2hs-demo-layout" = {
          depends = [
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if !flags.build-demos then false else true;
          };
        "gtk2hs-demo-menudemo" = {
          depends = [
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if !flags.build-demos then false else true;
          };
        "gtk2hs-demo-combodemo" = {
          depends = [
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = if !flags.build-demos then false else true;
          };
        "gtk2hs-demo-notebook" = {
          depends = [
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if !flags.build-demos then false else true;
          };
        "gtk2hs-demo-statusIcon" = {
          depends = [
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = if !flags.build-demos then false else true;
          };
        "gtk2hs-demo-arabic" = {
          depends = [
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if !flags.build-demos then false else true;
          };
        "gtk2hs-demo-overlay" = {
          depends = [
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = if !flags.build-demos then false else true;
          };
        };
      };
    }