{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = {
        name = "leksah";
        version = "0.4.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "2007-2009 Jürgen Nicklisch-Franken";
      maintainer = "Jutaro <jutaro@leksah.org>";
      author = "Jutaro";
      homepage = "http://www.leksah.org";
      url = "http://code.haskell.org/leksah";
      synopsis = "Haskell IDE written in Haskell";
      description = "An Integrated Development Environment for Haskell written in Haskell.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "leksah" = {
          depends  = [
            (hsPkgs.regex-posix)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.ghc)
            (hsPkgs.glib)
            (hsPkgs.gtk)
            (hsPkgs.directory)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.process)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
            (hsPkgs.base)
            (hsPkgs.old-time)
            (hsPkgs.gtksourceview2)
          ];
        };
      };
    };
  }