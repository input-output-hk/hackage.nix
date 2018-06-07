{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "numhask";
          version = "0.2.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Day";
        maintainer = "tonyday567@gmail.com";
        author = "Tony Day";
        homepage = "https://github.com/tonyday567/numhask#readme";
        url = "";
        synopsis = "numeric classes";
        description = "A numeric class heirarchy.";
        buildType = "Simple";
      };
      components = {
        numhask = {
          depends  = [ hsPkgs.base ];
        };
      };
    }