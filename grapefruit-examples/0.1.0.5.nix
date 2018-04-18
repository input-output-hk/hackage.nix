{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "grapefruit-examples";
          version = "0.1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "© 2007–2009 Brandenburgische Technische Universität Cottbus\n© 2011–2014 Wolfgang Jeltsch";
        maintainer = "wolfgang@cs.ioc.ee";
        author = "Wolfgang Jeltsch";
        homepage = "http://grapefruit-project.org/";
        url = "http://hackage.haskell.org/packages/archive/grapefruit-examples/0.1.0.5/grapefruit-examples-0.1.0.5.tar.gz";
        synopsis = "Examples using the Grapefruit library";
        description = "Grapefruit is a library for Functional Reactive Programming (FRP)\nwith a focus on user interfaces. FRP makes it possible to\nimplement reactive and interactive systems in a declarative\nstyle. To learn more about FRP, have a look at\n<http://haskell.org/haskellwiki/Functional_Reactive_Programming>.\n\nThis package contains a collection of examples using Grapefruit.\n\nFor running an example, you can start GHCi and enter the\nfollowing:\n\n@\nimport Graphics.UI.Grapefruit.Circuit\nimport Graphics.UI.Grapefruit./UIBackend/\nimport Examples.Grapefruit./Example/\nrun /UIBackend/ mainCircuit ()\n@\n\nReplace @/Example/@ with the name of the example to run and\n@/UIBackend/@ with the name of the UI backend you want to use. At\nthe moment, the only examples are @Simple@, @Switching@,\n@Converter@, @ListView@, and @SetView@, and the only UI backend\nis @GTK@.";
        buildType = "Simple";
      };
      components = {
        grapefruit-examples = {
          depends  = [
            hsPkgs.base
            hsPkgs.colour
            hsPkgs.containers
            hsPkgs.fraction
            hsPkgs.grapefruit-frp
            hsPkgs.grapefruit-records
            hsPkgs.grapefruit-ui
          ];
        };
      };
    }