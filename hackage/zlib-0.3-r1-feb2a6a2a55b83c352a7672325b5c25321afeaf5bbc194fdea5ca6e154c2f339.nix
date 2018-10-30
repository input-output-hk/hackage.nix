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
        name = "zlib";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2006 Duncan Coutts";
      maintainer = "Duncan Coutts <duncan.coutts@worc.ox.ac.uk>";
      author = "Duncan Coutts <duncan.coutts@worc.ox.ac.uk>";
      homepage = "";
      url = "";
      synopsis = "Compression and decompression in the gzip and zlib formats";
      description = "";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."z") ];
      };
    };
  }