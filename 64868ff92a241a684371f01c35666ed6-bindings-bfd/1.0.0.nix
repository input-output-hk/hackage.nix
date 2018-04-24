{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "bindings-bfd";
          version = "1.0.0";
        };
        license = "LGPL-3.0-only";
        copyright = "(c) 2009,2010,2011 Mick Nelso";
        maintainer = "mcnster@gmail.com";
        author = "Mick Nelso";
        homepage = "http://projects.haskell.org/bindings-bfd/";
        url = "darcs://code.haskell.org/bindings-bfd";
        synopsis = "Bindings for libbfd, a library of the GNU `binutils'";
        description = "These are bindings for `libbfd', a library of the GNU\n`binutils' package.  The bindings let a Haskell program\nquery the structure of any executable, object, or\nlibrary file format supported by the GNU Project (alot).\nIt also has support for disassembly of code in these\nfiles where available.";
        buildType = "Simple";
      };
      components = {
        bindings-bfd = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.unix
          ];
          libs = [
            pkgs.bfd
            pkgs.opcodes
          ];
          build-tools = [
            hsPkgs.alex
            hsPkgs.happy
            hsPkgs.hsc2hs
          ];
        };
      };
    }