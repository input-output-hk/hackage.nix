{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      bytestring-in-base = true;
    };
    package = {
      specVersion = "1.2.1";
      identifier = {
        name = "bzlib";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2007 Duncan Coutts";
      maintainer = "Duncan Coutts <duncan@haskell.org>";
      author = "Duncan Coutts <duncan@haskell.org>";
      homepage = "";
      url = "";
      synopsis = "Compression and decompression in the bzip2 format";
      description = "";
      buildType = "Simple";
    };
    components = {
      "bzlib" = {
        depends  = if flags.bytestring-in-base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ];
        libs = pkgs.lib.optional (!system.isWindows) (pkgs."bz2");
      };
    };
  }