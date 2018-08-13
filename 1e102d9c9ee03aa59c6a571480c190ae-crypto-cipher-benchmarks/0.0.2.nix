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
      specVersion = "1.8";
      identifier = {
        name = "crypto-cipher-benchmarks";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-crypto-cipher";
      url = "";
      synopsis = "Generic cryptography cipher benchmarks";
      description = "Generic cryptography cipher benchmarks";
      buildType = "Simple";
    };
    components = {
      "crypto-cipher-benchmarks" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.byteable)
          (hsPkgs.securemem)
          (hsPkgs.criterion)
          (hsPkgs.crypto-cipher-types)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
        ];
      };
    };
  }