{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "parsec-free";
          version = "3.1.11.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "johnw@newartisans.com";
        author = "John Wiegley";
        homepage = "https://github.com/jwiegley/parsec-free";
        url = "";
        synopsis = "Parsec API encoded as a deeply-embedded DSL, for debugging and analysis";
        description = "Parsec API encoded as a deeply-embedded DSL, for debugging and analysis";
        buildType = "Simple";
      };
      components = {
        parsec-free = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.free
            hsPkgs.transformers
            hsPkgs.parsec
          ];
        };
      };
    }