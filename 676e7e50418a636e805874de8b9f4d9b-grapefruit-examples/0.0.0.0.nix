{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "grapefruit-examples";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "© 2007–2009 Brandenburgische Technische Universität Cottbus";
        maintainer = "jeltsch@informatik.tu-cottbus.de";
        author = "Wolfgang Jeltsch";
        homepage = "http://haskell.org/haskellwiki/Grapefruit";
        url = "http://hackage.haskell.org/packages/archive/grapefruit-examples/0.0.0.0/grapefruit-examples-0.0.0.0.tar.gz";
        synopsis = "Examples using the Grapefruit library";
        description = "Grapefruit is a library for Functional Reactive Programming (FRP) with a focus on\nuser interfaces. FRP makes it possible to implement reactive and interactive systems\nin a declarative style. To learn more about FRP, have a look at\n<http://haskell.org/haskellwiki/Functional_Reactive_Programming>.\n\nThis package contains a collection of examples using Grapefruit.\n\nFor running an example, you can start GHCi and enter the following:\n\n@\nimport Graphics.UI.Grapefruit.Circuit\nimport Graphics.UI.Grapefruit./UIBackend/\nimport Examples.Grapefruit./Example/\nrun /UIBackend/ mainCircuit\n@\n\nReplace @/Example/@ with the name of the example to run and @/UIBackend/@ with the\nname of the UI backend you want to use. At the moment, the only examples are @Simple@\nand @Switching@ and the only UI backend is @GTK@.";
        buildType = "Simple";
      };
      components = {
        grapefruit-examples = {
          depends  = [
            hsPkgs.base
            hsPkgs.grapefruit-frp
            hsPkgs.grapefruit-records
            hsPkgs.grapefruit-ui
          ];
        };
      };
    }