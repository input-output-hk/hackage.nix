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
        name = "pkcs7";
        version = "1.0.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "coder@kyleisom.net";
      author = "K. Isom";
      homepage = "https://github.com/kisom/pkcs7-hs";
      url = "";
      synopsis = "PKCS #7 padding in Haskell";
      description = "Implements PKCS #7 padding.";
      buildType = "Simple";
    };
    components = {
      "pkcs7" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "test-pkcs7" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }