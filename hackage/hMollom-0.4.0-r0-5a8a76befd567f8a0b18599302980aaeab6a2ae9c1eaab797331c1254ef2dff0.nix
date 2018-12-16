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
      specVersion = "1.14";
      identifier = {
        name = "hMollom";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "itkovian@gmail.com";
      author = "Andy Georges";
      homepage = "http://github.com/itkovian/hMollom";
      url = "";
      synopsis = "Library to interact with the @Mollom anti-spam service";
      description = "Library to interact with the @Mollom anti-spam service";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.Crypto)
          (hsPkgs.bytestring)
          (hsPkgs.dataenc)
          (hsPkgs.mtl)
          (hsPkgs.HTTP)
          (hsPkgs.pureMD5)
          (hsPkgs.old-time)
          (hsPkgs.random)
        ];
      };
    };
  }