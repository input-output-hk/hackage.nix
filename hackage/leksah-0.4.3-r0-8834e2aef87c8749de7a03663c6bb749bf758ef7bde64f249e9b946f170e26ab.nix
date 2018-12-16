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
        version = "0.4.3";
      };
      license = "LicenseRef-GPL";
      copyright = "2007-2009 Jürgen Nicklisch-Franken";
      maintainer = "maintainer@leksah.org";
      author = "Jutaro";
      homepage = "http://www.leksah.org";
      url = "http://code.haskell.org/leksah";
      synopsis = "Haskell IDE written in Haskell";
      description = "An Integrated Development Environment for Haskell written in Haskell.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "leksah" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.glib)
            (hsPkgs.gtk)
            (hsPkgs.gtksourceview2)
            (hsPkgs.mtl)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.regex-posix)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }