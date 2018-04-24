{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Cabal";
          version = "1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "2003-2006, Isaac Jones";
        maintainer = "cabal-devel@haskell.org";
        author = "Isaac Jones <ijones@syntaxpolice.org>";
        homepage = "http://www.haskell.org/cabal/";
        url = "";
        synopsis = "A framework for packaging Haskell software";
        description = "The Haskell Common Architecture for Building Applications and\nLibraries: a framework defining a common interface for authors to more\neasily build their Haskell applications in a portable way.\n\nThe Haskell Cabal is meant to be a part of a larger infrastructure\nfor distributing, organizing, and cataloging Haskell libraries\nand tools.";
        buildType = "Custom";
      };
      components = {
        Cabal = {
          depends  = (if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.pretty
              hsPkgs.directory
              hsPkgs.old-time
              hsPkgs.process
              hsPkgs.containers
            ]
            else [
              hsPkgs.base
              hsPkgs.filepath
            ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "6.3") hsPkgs.unix;
        };
      };
    }