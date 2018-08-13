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
        name = "process-streaming";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Díaz Carrete";
      homepage = "";
      url = "";
      synopsis = "Streaming interface to system processes.";
      description = "Concurrent, buffered, streaming access to the input and outputs of system processes.";
      buildType = "Simple";
    };
    components = {
      "process-streaming" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.either)
          (hsPkgs.free)
          (hsPkgs.async)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.pipes)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.pipes-text)
          (hsPkgs.pipes-concurrency)
          (hsPkgs.pipes-safe)
          (hsPkgs.mmorph)
          (hsPkgs.exceptions)
        ];
      };
    };
  }