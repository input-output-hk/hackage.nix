{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "pugs-compat";
          version = "0.0.6.20130209.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "audreyt@audreyt.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Portable Haskell/POSIX layer for Pugs";
        description = "Portable Haskell/POSIX layer for Pugs";
        buildType = "Simple";
      };
      components = {
        pugs-compat = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.regex-pcre-builtin
            hsPkgs.regex-base
            hsPkgs.random
            hsPkgs.network
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.utf8-string
            hsPkgs.syb
            hsPkgs.stringtable-atom
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
      };
    }