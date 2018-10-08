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
        name = "RFC1751";
        version = "1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "xenog@protonmail.com";
      author = "Jean-Pierre Rupp";
      homepage = "https://github.com/xenog/rfc-1751.git#readme";
      url = "";
      synopsis = "RFC-1751 library for Haskell";
      description = "Convert 128-bit ByteString to/from 12 English words.";
      buildType = "Simple";
    };
    components = {
      "RFC1751" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test-rfc1751" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.RFC1751)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.hspec)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }