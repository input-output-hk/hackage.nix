{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "constraint-classes";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 guaraqe";
        maintainer = "guaraqe@openmailbox.org";
        author = "guaraqe";
        homepage = "http://github.com/guaraqe/constraint-classes#readme";
        url = "";
        synopsis = "Prelude classes using ConstraintKinds";
        description = "Please see README.org";
        buildType = "Simple";
      };
      components = {
        constraint-classes = {
          depends  = [ hsPkgs.base ];
        };
      };
    }