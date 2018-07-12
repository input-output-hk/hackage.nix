{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "boolsimplifier";
          version = "0.1.8";
        };
        license = "BSD-3-Clause";
        copyright = "Gershom Bazerman, Jeff Polakow 2011";
        maintainer = "gershomb@gmail.com";
        author = "Gershom Bazerman, Jeff Polakow";
        homepage = "";
        url = "";
        synopsis = "Simplification tools for simple propositional formulas.";
        description = "Normal form representation for boolean expressions. Typically simplifies such expressions, but is not guaranteed to produce the absolute simplest form.";
        buildType = "Simple";
      };
      components = {
        "boolsimplifier" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.base
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }