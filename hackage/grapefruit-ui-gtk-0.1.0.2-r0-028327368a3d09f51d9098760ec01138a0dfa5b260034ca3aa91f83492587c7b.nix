{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "grapefruit-ui-gtk"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "© 2007–2009 Brandenburgische Technische Universität Cottbus\n© 2011–2012 Wolfgang Jeltsch";
      maintainer = "wolfgang@cs.ioc.ee";
      author = "Wolfgang Jeltsch";
      homepage = "http://grapefruit-project.org/";
      url = "http://hackage.haskell.org/packages/archive/grapefruit-ui-gtk/0.1.0.2/grapefruit-ui-gtk-0.1.0.2.tar.gz";
      synopsis = "GTK+-based backend for declarative user interface programming";
      description = "Grapefruit is a library for Functional Reactive Programming (FRP) with a focus on\nuser interfaces. FRP makes it possible to implement reactive and interactive systems\nin a declarative style. To learn more about FRP, have a look at\n<http://haskell.org/haskellwiki/Functional_Reactive_Programming>.\n\nThis package contains the GTK+-based user interface backend.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."fraction" or ((hsPkgs.pkgs-errors).buildDepError "fraction"))
          (hsPkgs."grapefruit-frp" or ((hsPkgs.pkgs-errors).buildDepError "grapefruit-frp"))
          (hsPkgs."grapefruit-records" or ((hsPkgs.pkgs-errors).buildDepError "grapefruit-records"))
          (hsPkgs."grapefruit-ui" or ((hsPkgs.pkgs-errors).buildDepError "grapefruit-ui"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          ];
        buildable = true;
        };
      };
    }