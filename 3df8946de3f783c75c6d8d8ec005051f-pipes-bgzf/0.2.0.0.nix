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
        name = "pipes-bgzf";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014-2015";
      maintainer = "ropoctl@gmail.com";
      author = "Rob O'Callahan";
      homepage = "";
      url = "";
      synopsis = "Blocked GZip";
      description = "Bgzf consists of 64kb maximum sized gzip blocks, and can be inflated using normal zlib functions, but allows for random access";
      buildType = "Simple";
    };
    components = {
      "pipes-bgzf" = {
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