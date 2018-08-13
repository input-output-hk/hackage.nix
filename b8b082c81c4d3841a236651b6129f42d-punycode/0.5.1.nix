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
        name = "punycode";
        version = "0.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Myles C. Maxfield <myles.maxfield@gmail.com>";
      author = "Myles C. Maxfield <myles.maxfield@gmail.com>";
      homepage = "https://github.com/litherum/punycode";
      url = "";
      synopsis = "Encode unicode strings to ascii forms according to RFC 3492";
      description = "Encode unicode strings to ascii forms according to RFC 3492. It is written in pure Haskell, as opposed to gnuidn's Data.Text.IDN.Punycode";
      buildType = "Simple";
    };
    components = {
      "punycode" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.mtl)
          (hsPkgs.utf8-string)
        ];
      };
      tests = {
        "test-punycode" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.mtl)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }