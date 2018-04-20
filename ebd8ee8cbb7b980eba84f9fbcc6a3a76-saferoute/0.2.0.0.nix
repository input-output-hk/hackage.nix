{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "saferoute";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014, Peter Harpending";
        maintainer = "Peter Harpending <pharpend2@gmail.com>";
        author = "Peter Harpending";
        homepage = "";
        url = "";
        synopsis = "A simple type-safe routing library.";
        description = "saferoute is a type-safe routing library for web applications.";
        buildType = "Simple";
      };
      components = {
        saferoute = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.containers
            hsPkgs.text
          ];
        };
      };
    }