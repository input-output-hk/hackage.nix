{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { old-locale = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "htar";
        version = "0.4.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2007 Bjorn Bringert <bjorn@bringert.net>\n2008-2015 Duncan Coutts <duncan@community.haskell.org>";
      maintainer = "Duncan Coutts <duncan@community.haskell.org>";
      author = "Bjorn Bringert <bjorn@bringert.net>\nDuncan Coutts <duncan@community.haskell.org>";
      homepage = "";
      url = "";
      synopsis = "Command-line tar archive utility.";
      description = "A Command-line utility to create, extract and list the\ncontents of tar archives. It can work with compressed\narchives using gzip or bzip2 compression.\n\nThis is in part a demo of the @tar@ library but it is also\nusable in place of the ordinary @tar@ program for systems\nlike Windows that do not come with it as standard.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "htar" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.tar)
            (hsPkgs.zlib)
            (hsPkgs.bzlib)
          ] ++ (if flags.old-locale
            then [
              (hsPkgs.time)
              (hsPkgs.old-locale)
            ]
            else [ (hsPkgs.time) ]);
        };
      };
    };
  }