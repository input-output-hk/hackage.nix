{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "http-pony-transformer-case-insensitive";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nfjinjing@gmail.com";
        author = "Jinjing Wang";
        homepage = "";
        url = "";
        synopsis = "";
        description = "An example transformer that demonstrate the dynamic nature of http-pony";
        buildType = "Simple";
      };
      components = {
        http-pony-transformer-case-insensitive = {
          depends  = [
            hsPkgs.base
            hsPkgs.profunctors
            hsPkgs.lens
            hsPkgs.case-insensitive
          ];
        };
      };
    }