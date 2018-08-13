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
        name = "potoki-zlib";
        version = "0.3";
      };
      license = "MIT";
      copyright = "(c) 2018, Metrix.AI";
      maintainer = "Ilya Zubkov <izubkov.forall@gmail.com>";
      author = "Ilya Zubkov <izubkov.forall@gmail.com>";
      homepage = "https://github.com/nikita-volkov/potoki-zlib";
      url = "";
      synopsis = "Streaming ZLib decompression";
      description = "";
      buildType = "Simple";
    };
    components = {
      "potoki-zlib" = {
        depends  = [
          (hsPkgs.acquire)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.potoki-core)
          (hsPkgs.zlib)
        ];
      };
    };
  }