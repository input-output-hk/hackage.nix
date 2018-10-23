{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      bytestring-in-base = true;
      split-base = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "tar";
        version = "0.1.1.1";
      };
      license = "BSD-4-Clause";
      copyright = "2007 Bjorn Bringert <bjorn@bringert.net>";
      maintainer = "Bjorn Bringert <bjorn@bringert.net>";
      author = "Bjorn Bringert <bjorn@bringert.net>";
      homepage = "";
      url = "";
      synopsis = "TAR (tape archive format) library.";
      description = "This is a library for reading and writing TAR archives.";
      buildType = "Simple";
    };
    components = {
      "tar" = {
        depends  = ([
          (hsPkgs.binary)
          (hsPkgs.unix-compat)
        ] ++ (if flags.bytestring-in-base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ])) ++ (if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.old-time)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }