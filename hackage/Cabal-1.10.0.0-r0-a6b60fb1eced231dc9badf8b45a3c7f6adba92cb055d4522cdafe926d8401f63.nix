{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      base4 = true;
      base3 = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Cabal";
        version = "1.10.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2003-2006, Isaac Jones\n2005-2009, Duncan Coutts";
      maintainer = "cabal-devel@haskell.org";
      author = "Isaac Jones <ijones@syntaxpolice.org>\nDuncan Coutts <duncan@haskell.org>";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "A framework for packaging Haskell software";
      description = "The Haskell Common Architecture for Building Applications and\nLibraries: a framework defining a common interface for authors to more\neasily build their Haskell applications in a portable way.\n\nThe Haskell Cabal is part of a larger infrastructure for distributing,\norganizing, and cataloging Haskell libraries and tools.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = ((([
          (hsPkgs.base)
          (hsPkgs.filepath)
        ] ++ [ (hsPkgs.base) ]) ++ [
          (hsPkgs.base)
        ]) ++ pkgs.lib.optionals (flags.base3) [
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.old-time)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.pretty)
        ]) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }