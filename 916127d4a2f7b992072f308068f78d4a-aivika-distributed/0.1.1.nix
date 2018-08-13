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
        name = "aivika-distributed";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2016. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://www.aivikasoft.com/en/products/aivika.html";
      url = "";
      synopsis = "Parallel distributed simulation library";
      description = "This package extends the Aivika library with facilities for running parallel distributed simulations.\nIt uses an optimistic strategy known as the Time Warp method.\n";
      buildType = "Simple";
    };
    components = {
      "aivika-distributed" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.random)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.distributed-process)
          (hsPkgs.aivika)
          (hsPkgs.aivika-transformers)
        ];
      };
    };
  }