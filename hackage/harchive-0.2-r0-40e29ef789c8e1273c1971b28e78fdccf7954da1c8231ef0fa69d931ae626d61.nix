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
      specVersion = "0";
      identifier = {
        name = "harchive";
        version = "0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "(C) 2007, David Brown";
      maintainer = "David Brown <harchive@davidb.org>";
      author = "David Brown <harchive@davidb.org>";
      homepage = "http://www.davidb.org/darcs/harchive/";
      url = "";
      synopsis = "Networked content addressed backup and restore software.";
      description = "Implements software to perform backups and restores of filesystem\ndata to a content addressed storage pool.  Very preliminary version.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "hfile" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.network)
            (hsPkgs.zlib)
            (hsPkgs.unix)
            (hsPkgs.parsec)
          ];
          libs = [ (pkgs."ssl") ];
        };
        "hpool" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.network)
            (hsPkgs.zlib)
            (hsPkgs.unix)
            (hsPkgs.parsec)
          ];
          libs = [
            (pkgs."ssl")
            (pkgs."sqlite3")
          ];
        };
      };
    };
  }