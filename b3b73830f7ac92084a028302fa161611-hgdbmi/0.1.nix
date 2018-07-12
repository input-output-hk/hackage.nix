{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hgdbmi";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 Evan Martin <martine@danga.com>";
        maintainer = "martine@danga.com";
        author = "Evan Martin";
        homepage = "http://neugierig.org/software/darcs/browse/?r=hgdbmi;a=summary";
        url = "";
        synopsis = "GDBMI interface (program-driven control of GDB)";
        description = "GDB\\/MI lets programs drive GDB.  It can be used, for example, by GDB\nfrontends.  This module wraps attaching GDB to a process and parsing the\n(surprisingly complicated) GDB\\/MI output.";
        buildType = "Simple";
      };
      components = {
        "hgdbmi" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.unix
          ];
        };
      };
    }