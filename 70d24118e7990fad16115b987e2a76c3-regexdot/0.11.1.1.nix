{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      llvm = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "regexdot";
          version = "0.11.1.1";
        };
        license = "LicenseRef-GPL";
        copyright = "(C) 2010-2015 Dr. Alistair Ward";
        maintainer = "regexdot <at> functionalley <dot> eu";
        author = "Dr. Alistair Ward";
        homepage = "http://functionalley.eu";
        url = "";
        synopsis = "A polymorphic, POSIX, extended regex-engine.";
        description = "Provides a portable, POSIX, extended regex-engine, designed to process a list of /arbitrary/ objects.";
        buildType = "Simple";
      };
      components = {
        regexdot = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.parallel
            hsPkgs.parsec
            hsPkgs.toolshed
          ];
        };
      };
    }