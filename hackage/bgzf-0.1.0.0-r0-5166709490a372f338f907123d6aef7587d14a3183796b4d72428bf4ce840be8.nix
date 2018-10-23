{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bgzf";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Rob O'Callahan 2014";
      maintainer = "rcallahan@eurekagenomics.com";
      author = "rcallahan";
      homepage = "";
      url = "";
      synopsis = "Blocked GZip";
      description = "Bgzf consists of 64kb maximum sized gzip blocks, and can be inflated using normal zlib functions, but allows for random access";
      buildType = "Simple";
    };
    components = {
      "bgzf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.streaming-commons)
          (hsPkgs.bytestring)
          (hsPkgs.pipes)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
        ];
      };
    };
  }