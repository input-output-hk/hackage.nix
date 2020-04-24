{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "grapefruit-ui-gtk"; version = "0.1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "© 2007–2009 Brandenburgische Technische Universität Cottbus\n© 2011–2014 Wolfgang Jeltsch";
      maintainer = "wolfgang-it@jeltsch.info";
      author = "Wolfgang Jeltsch";
      homepage = "https://grapefruit-project.org/";
      url = "https://hackage.haskell.org/package/grapefruit-ui-gtk-0.1.0.6/grapefruit-ui-gtk-0.1.0.6.tar.gz";
      synopsis = "GTK+-based backend for declarative user interface programming";
      description = "Grapefruit is a library for Functional Reactive Programming (FRP)\nwith a focus on user interfaces. FRP makes it possible to\nimplement reactive and interactive systems in a declarative\nstyle. To learn more about FRP, have a look at\n<http://haskell.org/haskellwiki/Functional_Reactive_Programming>.\n\nThis package contains the GTK+-based user interface backend.";
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
          (hsPkgs."gtk3" or ((hsPkgs.pkgs-errors).buildDepError "gtk3"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }