{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cryptohash-conduit";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-cryptohash-conduit";
      url = "";
      synopsis = "cryptohash conduit";
      description = "Support all the @cryptohash@ package using conduits from\nthe @conduit@ package.";
      buildType = "Simple";
    };
    components = {
      "cryptohash-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.cryptohash)
          (hsPkgs.transformers)
        ];
      };
    };
  }