{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fixed-width";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016 Alexis Williams";
        maintainer = "sasinestro@gmail.com";
        author = "Alexis Williams";
        homepage = "";
        url = "";
        synopsis = "Fixed width subsets of an Int64/Word64.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        fixed-width = {
          depends  = [ hsPkgs.base ];
        };
      };
    }