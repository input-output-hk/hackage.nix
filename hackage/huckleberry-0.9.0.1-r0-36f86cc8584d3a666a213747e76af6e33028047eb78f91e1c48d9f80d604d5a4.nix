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
      specVersion = "1.10";
      identifier = {
        name = "huckleberry";
        version = "0.9.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tkms@mitsuji.org";
      author = "Takamasa Mitsuji";
      homepage = "";
      url = "";
      synopsis = "IchigoJam BASIC expressed in Haskell.";
      description = "The EDSL Provides bridge between IchigoJam BASIC and Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.serialport)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.huckleberry)
          ];
        };
      };
    };
  }