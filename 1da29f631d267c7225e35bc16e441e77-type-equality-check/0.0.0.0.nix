{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "type-equality-check";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "© 2004       Oleg Kiselyov\n(Fleet Numerical Meteorology and Oceanography Center);\n© 2004       Ralf Lämmel\n(Centrum Wiskunde & Informatica, Vrije Universiteit Amsterdam);\n© 2004       Keean Schupke\n(Imperial College London);\n© 2008, 2009 Brandenburgische Technische Universität Cottbus";
        maintainer = "jeltsch@informatik.tu-cottbus.de";
        author = "Wolfgang Jeltsch";
        homepage = "http://softbase.org/type-equality-check/";
        url = "http://hackage.haskell.org/packages/archive/type-equality-check/0.0.0.0/type-equality-check-0.0.0.0.tar.gz";
        synopsis = "Type equality check";
        description = "This packages provides a type equality check whose implementation is basically the\none from the HList library.";
        buildType = "Simple";
      };
      components = {
        "type-equality-check" = {
          depends  = [
            hsPkgs.base
            hsPkgs.type-level
          ];
        };
      };
    }