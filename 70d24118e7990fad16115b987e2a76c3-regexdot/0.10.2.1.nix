{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      havedeepseq = true;
      llvm = false;
      threaded = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "regexdot";
          version = "0.10.2.1";
        };
        license = "LicenseRef-GPL";
        copyright = "(C) 2010 Dr. Alistair Ward";
        maintainer = "regexdot <at> functionalley <dot> eu";
        author = "Dr. Alistair Ward";
        homepage = "http://functionalley.eu";
        url = "";
        synopsis = "A /polymorphic/, POSIX, extended regular-expression engine.";
        description = "Provides a portable, POSIX, extended regex-engine, designed to process a list of /arbitrary/ objects.";
        buildType = "Simple";
      };
      components = {
        regexdot = {
          depends  = ([
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.toolshed
          ] ++ (if _flags.havedeepseq
            then [ hsPkgs.deepseq ]
            else [ hsPkgs.parallel ])) ++ [
            hsPkgs.parallel
          ];
        };
      };
    }