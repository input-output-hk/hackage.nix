{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "webkit"; version = "0.13.0.2"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2013 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@lists.sourceforge.net";
      author = "Cjacker Huang, Andy Stewart, Axel Simon";
      homepage = "http://projects.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the Webkit library.";
      description = "WebKit is a web content engine, derived from KHTML and KJS from KDE, and\nused primarily in Apple's Safari browser.  It is made to be embedded in\nother applications, such as mail readers, or web browsers.\nIt is able to display content such as HTML, SVG, XML, and others. It also\nsupports DOM, XMLHttpRequest, XSLT, CSS, Javascript/ECMAscript and more.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."pango" or ((hsPkgs.pkgs-errors).buildDepError "pango"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          ];
        pkgconfig = [
          (pkgconfPkgs."webkit-1.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "webkit-1.0"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs or ((hsPkgs.pkgs-errors).buildToolDepError "gtk2hsC2hs")))
          (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator or ((hsPkgs.pkgs-errors).buildToolDepError "gtk2hsHookGenerator")))
          (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen or ((hsPkgs.pkgs-errors).buildToolDepError "gtk2hsTypeGen")))
          ];
        buildable = true;
        };
      };
    }