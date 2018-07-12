{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tracy";
          version = "0.1.4.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "denis.redozubov@gmail.com";
        author = "Denis Redozubov";
        homepage = "";
        url = "";
        synopsis = "Convenience wrappers for non-intrusive debug tracing";
        description = "";
        buildType = "Simple";
      };
      components = {
        "tracy" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }