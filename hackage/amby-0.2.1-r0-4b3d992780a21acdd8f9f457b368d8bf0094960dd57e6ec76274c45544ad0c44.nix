{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amby"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2016 Justin Sermeno";
      maintainer = "Justin Sermeno";
      author = "Justin Sermeno";
      homepage = "https://github.com/jsermeno/amby#readme";
      url = "";
      synopsis = "Statistical data visualization";
      description = "Statistical data visualization. Provides a high-level\ninterface built on top of\n<https://github.com/timbod7/haskell-chart/wiki Chart>\nto quickly display attractive visualizations within GHCi.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.data-default-class)
          (hsPkgs.Chart-cairo)
          (hsPkgs.Chart-diagrams)
          (hsPkgs.Chart)
          (hsPkgs.vector)
          (hsPkgs.statistics)
          (hsPkgs.microlens)
          (hsPkgs.colour)
          (hsPkgs.scientific)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          (hsPkgs.either)
          (hsPkgs.pretty-display)
          (hsPkgs.process)
          (hsPkgs.exceptions)
          (hsPkgs.data-default)
          ];
        };
      exes = { "amby-exe" = { depends = [ (hsPkgs.base) (hsPkgs.amby) ]; }; };
      tests = { "amby-test" = { depends = [ (hsPkgs.base) (hsPkgs.amby) ]; }; };
      };
    }