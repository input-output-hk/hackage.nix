{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "SmtLib";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "rogerp62@outlook.com";
        author = "Roger";
        homepage = "https://github.com/MfesGA/HsmtlibParser";
        url = "";
        synopsis = "Library for parsing SMTLIB2";
        description = "SMTLib2 syntax and parsers.";
        buildType = "Simple";
      };
      components = {
        "SmtLib" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.transformers
          ];
        };
      };
    }