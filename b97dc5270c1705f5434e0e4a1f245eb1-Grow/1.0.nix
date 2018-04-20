{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Grow";
          version = "1.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "marc.coiffier@gmail.com";
        author = "Marc Coiffier";
        homepage = "";
        url = "";
        synopsis = "A declarative make-like interpreter.";
        description = "";
        buildType = "Simple";
      };
      components = {
        Grow = {
          depends  = [
            hsPkgs.base
            hsPkgs.definitive-base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.definitive-filesystem
            hsPkgs.clock
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.unix
            hsPkgs.definitive-parser
            hsPkgs.vector
            hsPkgs.primitive
          ];
        };
      };
    }