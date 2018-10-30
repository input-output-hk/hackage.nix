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
      specVersion = "1.6";
      identifier = {
        name = "hMollom";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "itkovian@gmail.com";
      author = "Andy Georges";
      homepage = "http://github.com/itkovian/hMollom";
      url = "";
      synopsis = "Library to interact with the Mollom anti-spam service";
      description = "Library to interact with the Mollom anti-spam service";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haxr)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.Crypto)
          (hsPkgs.bytestring)
          (hsPkgs.dataenc)
          (hsPkgs.mtl)
        ];
      };
    };
  }