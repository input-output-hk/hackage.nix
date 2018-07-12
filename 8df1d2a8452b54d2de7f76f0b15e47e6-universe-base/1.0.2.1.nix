{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "universe-base";
          version = "1.0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Daniel Wagner";
        maintainer = "me@dmwit.com";
        author = "Daniel Wagner";
        homepage = "https://github.com/dmwit/universe";
        url = "";
        synopsis = "A class for finite and recursively enumerable types and some helper functions for enumerating them";
        description = "";
        buildType = "Simple";
      };
      components = {
        "universe-base" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }