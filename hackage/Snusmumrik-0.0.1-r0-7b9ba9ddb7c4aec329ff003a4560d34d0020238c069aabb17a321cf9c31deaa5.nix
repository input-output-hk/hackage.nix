{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Snusmumrik";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sergey Astanin <s.astanin@gmail.com>";
      author = "";
      homepage = "http://bitbucket.org/jetxee/snusmumrik/";
      url = "";
      synopsis = "E-library directory based on FUSE virtual file system.";
      description = "A cyber-anarchist e-library directory based on FUSE virtual file system.\nIt is intended to work with FB2 (FictionBook2) e-book archives in the first\nplace. Other e-book formats and archive layouts may be implemented later.\n\nToday Snusmumrik consists of two utilities, `snus` to index archives and\n`mumrik` to mount library directory at given mount point. Mounted directory\nis organized by author name, by genre and by language.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "snus" = {
          depends  = [
            (hsPkgs.haskell98)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.iconv)
            (hsPkgs.regex-tdfa)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-sqlite3)
            (hsPkgs.convertible)
            (hsPkgs.LibZip)
            (hsPkgs.xml)
            (hsPkgs.hslogger)
          ];
          libs = [ (pkgs."zip") ];
          build-tools = [
            (hsPkgs.buildPackages.cpphs)
          ];
        };
        "mumrik" = {
          depends  = [
            (hsPkgs.haskell98)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.iconv)
            (hsPkgs.regex-tdfa)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-sqlite3)
            (hsPkgs.convertible)
            (hsPkgs.stm)
            (hsPkgs.LibZip)
            (hsPkgs.unix)
            (hsPkgs.HFuse)
            (hsPkgs.hslogger)
          ];
          libs = [ (pkgs."zip") ];
          build-tools = [
            (hsPkgs.buildPackages.cpphs)
          ];
        };
      };
    };
  }