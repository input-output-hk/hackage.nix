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
      specVersion = "1.10";
      identifier = {
        name = "machines-zlib";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 LShift";
      maintainer = "";
      author = "Robin Green";
      homepage = "https://github.com/lshift/machines-zlib";
      url = "";
      synopsis = "Decompression support for machines";
      description = "";
      buildType = "Simple";
    };
    components = {
      "machines-zlib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.basic-prelude)
          (hsPkgs.machines)
          (hsPkgs.streaming-commons)
        ];
      };
    };
  }