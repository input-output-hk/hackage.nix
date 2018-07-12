{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "option";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "grogers385@gmail.com";
        author = "George Rogers";
        homepage = "";
        url = "";
        synopsis = "A strict version of Maybe";
        description = "A strict version of Maybe";
        buildType = "Simple";
      };
      components = {
        "option" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }