{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "grapefruit-examples"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "© 2007–2009 Brandenburgische Technische Universität Cottbus\n© 2011–2012 Wolfgang Jeltsch";
      maintainer = "wolfgang@cs.ioc.ee";
      author = "Wolfgang Jeltsch";
      homepage = "http://grapefruit-project.org/";
      url = "http://hackage.haskell.org/packages/archive/grapefruit-examples/0.1.0.2/grapefruit-examples-0.1.0.2.tar.gz";
      synopsis = "Examples using the Grapefruit library";
      description = "Grapefruit is a library for Functional Reactive Programming (FRP) with a focus on\nuser interfaces. FRP makes it possible to implement reactive and interactive systems\nin a declarative style. To learn more about FRP, have a look at\n<http://haskell.org/haskellwiki/Functional_Reactive_Programming>.\n\nThis package contains a collection of examples using Grapefruit.\n\nFor running an example, you can start GHCi and enter the following:\n\n@\nimport Graphics.UI.Grapefruit.Circuit\nimport Graphics.UI.Grapefruit./UIBackend/\nimport Examples.Grapefruit./Example/\nrun /UIBackend/ mainCircuit ()\n@\n\nReplace @/Example/@ with the name of the example to run and @/UIBackend/@ with the\nname of the UI backend you want to use. At the moment, the only examples are\n@Simple@, @Switching@, @Converter@, @ListView@, and @SetView@, and the only UI\nbackend is @GTK@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.colour)
          (hsPkgs.containers)
          (hsPkgs.fraction)
          (hsPkgs.grapefruit-frp)
          (hsPkgs.grapefruit-records)
          (hsPkgs.grapefruit-ui)
          ];
        };
      };
    }