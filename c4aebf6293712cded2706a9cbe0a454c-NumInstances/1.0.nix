{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "NumInstances";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "";
        url = "http://github.com/conal/NumInstances";
        synopsis = "Instances of numeric classes for functions and tuples";
        description = "";
        buildType = "Simple";
      };
      components = {
        NumInstances = {
          depends  = [ hsPkgs.base ];
        };
      };
    }