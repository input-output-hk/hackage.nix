{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "grapefruit-ui-gtk";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "© 2007–2009 Brandenburgische Technische Universität Cottbus";
      maintainer = "jeltsch@informatik.tu-cottbus.de";
      author = "Wolfgang Jeltsch";
      homepage = "http://haskell.org/haskellwiki/Grapefruit";
      url = "http://hackage.haskell.org/packages/archive/grapefruit-ui-gtk/0.0.0.0/grapefruit-ui-gtk-0.0.0.0.tar.gz";
      synopsis = "GTK+-based backend for declarative user interface programming";
      description = "Grapefruit is a library for Functional Reactive Programming (FRP) with a focus on\nuser interfaces. FRP makes it possible to implement reactive and interactive systems\nin a declarative style. To learn more about FRP, have a look at\n<http://haskell.org/haskellwiki/Functional_Reactive_Programming>.\n\nThis package contains the GTK+-based user interface backend.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.grapefruit-frp)
          (hsPkgs.grapefruit-records)
          (hsPkgs.grapefruit-ui)
          (hsPkgs.gtk)
        ];
      };
    };
  }