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
        name = "cryptonite-conduit";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "https://github.com/haskell-crypto/cryptonite-conduit";
      url = "";
      synopsis = "cryptonite conduit";
      description = "Conduit bridge for cryptonite\n\nFor now only provide a conduit version for hash, but\nwith contribution, this could provide cipher conduits too,\nand probably other things.";
      buildType = "Simple";
    };
    components = {
      "cryptonite-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.conduit-extra)
          (hsPkgs.cryptonite)
          (hsPkgs.transformers)
        ];
      };
    };
  }