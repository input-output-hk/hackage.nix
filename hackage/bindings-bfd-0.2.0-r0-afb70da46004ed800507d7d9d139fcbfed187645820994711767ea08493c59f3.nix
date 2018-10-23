{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = {
        name = "bindings-bfd";
        version = "0.2.0";
      };
      license = "LGPL-3.0-only";
      copyright = "(c) 2009, 2010 Michael Nelson";
      maintainer = "mcnster@gmail.com";
      author = "Michael Nelson";
      homepage = "http://projects.haskell.org/bindings-bfd/";
      url = "darcs://code.haskell.org/bindings-bfd";
      synopsis = "Bindings for libbfd, a component of the GNU `binutils'";
      description = "These are bindings for `libbfd', a component of the GNU\n`binutils' package.  The bindings lets a Haskell program\nquery the structure of any executable, object, or\nlibrary file format supported by the GNU Project.\nIt also has support for disassembly of code in these\nfiles where appropriate.";
      buildType = "Simple";
    };
    components = {
      "bindings-bfd" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.unix)
        ];
        libs = [
          (pkgs."bfd")
          (pkgs."opcodes")
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
          (hsPkgs.buildPackages.happy)
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }