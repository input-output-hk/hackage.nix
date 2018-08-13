{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hircules";
        version = "0.4";
      };
      license = "LicenseRef-GPL";
      copyright = "2003 Andrew J. Bromage\n2003, 2004, 2006 Jens-Ulrik Petersen <petersen@haskell.org>\n2008-2010 Jens Petersen <petersen@haskell.org>";
      maintainer = "Jens Petersen <petersen@haskell.org>";
      author = "Jens Petersen <petersen@haskell.org>";
      homepage = "";
      url = "";
      synopsis = "IRC client";
      description = "Hircules is an IRC (Internet Relay Chat) client with a gtk GUI.\nSee the old project page http://haskell.org/hircules for more info.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hircules" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gtk)
            (hsPkgs.utf8-string)
            (hsPkgs.time)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.network)
            (hsPkgs.old-time)
            (hsPkgs.old-locale)
          ];
        };
      };
    };
  }