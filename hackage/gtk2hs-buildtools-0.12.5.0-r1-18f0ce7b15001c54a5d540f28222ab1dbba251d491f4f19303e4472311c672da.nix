{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { closuresignals = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "gtk2hs-buildtools"; version = "0.12.5.0"; };
      license = "GPL-2.0-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-devel@lists.sourceforge.net";
      author = "Axel Simon, Duncan Coutts, Manuel Chakravaty";
      homepage = "http://projects.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Tools to build the Gtk2Hs suite of User Interface libraries.";
      description = "This package provides a set of helper programs necessary to\nbuild the Gtk2Hs suite of libraries. These tools include\na modified c2hs binding tool that is used to generate\nFFI declarations, a tool to build a type hierarchy that\nmirrors the C type hierarchy of GObjects found in glib,\nand a generator for signal declarations that are used\nto call back from C to Haskell. These tools are not needed\nto actually run Gtk2Hs programs.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gtk2hsTypeGen" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "gtk2hsHookGenerator" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "gtk2hsC2hs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.7") (hsPkgs."hashtables" or ((hsPkgs.pkgs-errors).buildDepError "hashtables"));
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
            ];
          buildable = true;
          };
        };
      };
    }