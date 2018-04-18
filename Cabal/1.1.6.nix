{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "Cabal";
          version = "1.1.6";
        };
        license = "BSD-3-Clause";
        copyright = "2003-2006, Isaac Jones";
        maintainer = "Isaac Jones <ijones@syntaxpolice.org>";
        author = "Isaac Jones <ijones@syntaxpolice.org>";
        homepage = "http://www.haskell.org/cabal/";
        url = "";
        synopsis = "A framework for packaging Haskell software";
        description = "The Haskell Common Architecture for Building Applications and\nLibraries: a framework defining a common interface for authors to more\neasily build their Haskell applications in a portable way.\n\nThe Haskell Cabal is meant to be a part of a larger infrastructure\nfor distributing, organizing, and cataloging Haskell libraries\nand tools.";
        buildType = "Custom";
      };
      components = {
        Cabal = {
          depends  = [ hsPkgs.base ];
        };
      };
    }