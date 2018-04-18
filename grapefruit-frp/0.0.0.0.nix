{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "grapefruit-frp";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "© 2007–2009 Brandenburgische Technische Universität Cottbus";
        maintainer = "jeltsch@informatik.tu-cottbus.de";
        author = "Wolfgang Jeltsch";
        homepage = "http://haskell.org/haskellwiki/Grapefruit";
        url = "http://hackage.haskell.org/packages/archive/grapefruit-frp/0.0.0.0/grapefruit-frp-0.0.0.0.tar.gz";
        synopsis = "Functional Reactive Programming core";
        description = "Grapefruit is a library for Functional Reactive Programming (FRP) with a focus on\nuser interfaces. FRP makes it possible to implement reactive and interactive systems\nin a declarative style. To learn more about FRP, have a look at\n<http://haskell.org/haskellwiki/Functional_Reactive_Programming>.\n\nThis package contains general support for Functional Reactive Programming.";
        buildType = "Simple";
      };
      components = {
        grapefruit-frp = {
          depends  = [
            hsPkgs.arrows
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.TypeCompose
          ];
        };
      };
    }