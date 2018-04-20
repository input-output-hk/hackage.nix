{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "pugs-compat";
          version = "0.0.6.1";
        };
        license = "BSD-3-Clause";
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
            hsPkgs.haskell98
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
            hsPkgs.stringtable-atom
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
      };
    }