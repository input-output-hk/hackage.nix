{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "rangemin";
          version = "2.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "wasserman.louis@gmail.com";
        author = "Louis Wasserman";
        homepage = "";
        url = "";
        synopsis = "Linear range-min algorithms.";
        description = "Rapidly (in linear time) preprocesses a vector so that the minimum element of any given subrange can be looked up in constant time.";
        buildType = "Simple";
      };
      components = {
        rangemin = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.containers
            hsPkgs.primitive
          ];
        };
      };
    }