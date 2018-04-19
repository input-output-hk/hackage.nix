{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "grapefruit-frp";
          version = "0.1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "© 2007–2009 Brandenburgische Technische Universität Cottbus\n© 2011–2014 Wolfgang Jeltsch";
        maintainer = "wolfgang@cs.ioc.ee";
        author = "Wolfgang Jeltsch";
        homepage = "http://grapefruit-project.org/";
        url = "http://hackage.haskell.org/packages/archive/grapefruit-frp/0.1.0.5/grapefruit-frp-0.1.0.5.tar.gz";
        synopsis = "Functional Reactive Programming core";
        description = "Grapefruit is a library for Functional Reactive Programming (FRP)\nwith a focus on user interfaces. FRP makes it possible to\nimplement reactive and interactive systems in a declarative\nstyle. To learn more about FRP, have a look at\n<http://haskell.org/haskellwiki/Functional_Reactive_Programming>.\n\nThis package contains general support for Functional Reactive\nProgramming.";
        buildType = "Simple";
      };
      components = {
        grapefruit-frp = {
          depends  = [
            hsPkgs.arrows
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.fingertree
            hsPkgs.semigroups
            hsPkgs.TypeCompose
          ];
        };
      };
    }