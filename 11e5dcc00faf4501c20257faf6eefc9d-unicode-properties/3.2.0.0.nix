{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "unicode-properties";
          version = "3.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ashley Yakeley <ashley@semantic.org>";
        author = "Ashley Yakeley <ashley@semantic.org>";
        homepage = "";
        url = "";
        synopsis = "Unicode 3.2.0 character properties";
        description = "Unicode 3.2.0 character properties";
        buildType = "Simple";
      };
      components = {
        unicode-properties = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
          ];
        };
      };
    }