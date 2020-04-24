{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "grapefruit-ui"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2007–2009 Brandenburgische Technische Universität Cottbus; © 2011 Wolfgang Jeltsch";
      maintainer = "wolfgang@cs.ioc.ee";
      author = "Wolfgang Jeltsch";
      homepage = "http://grapefruit-project.org/";
      url = "http://hackage.haskell.org/packages/archive/grapefruit-ui/0.1.0.0/grapefruit-ui-0.1.0.0.tar.gz";
      synopsis = "Declarative user interface programming";
      description = "Grapefruit is a library for Functional Reactive Programming (FRP) with a focus on\nuser interfaces. FRP makes it possible to implement reactive and interactive systems\nin a declarative style. To learn more about FRP, have a look at\n<http://haskell.org/haskellwiki/Functional_Reactive_Programming>.\n\nThis package contains general user interface support. To make use of it, it has to be\ncomplemented by a UI backend. It is possible to have different UI backends\nimplementing the same general interface on top of different UI toolkits. At the\nmoment, the only backend is one based on GTK+. This is provided by the\ngrapefruit-ui-gtk package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."arrows" or ((hsPkgs.pkgs-errors).buildDepError "arrows"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."fraction" or ((hsPkgs.pkgs-errors).buildDepError "fraction"))
          (hsPkgs."grapefruit-frp" or ((hsPkgs.pkgs-errors).buildDepError "grapefruit-frp"))
          (hsPkgs."grapefruit-records" or ((hsPkgs.pkgs-errors).buildDepError "grapefruit-records"))
          ];
        buildable = true;
        };
      };
    }