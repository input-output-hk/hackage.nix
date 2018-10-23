{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "base58-bytestring";
        version = "0.0.3";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "s9gf4ult@gmail.com";
      author = "Philippe Laprade, Jean-Pierre Rupp";
      homepage = "https://bitbucket.org/s9gf4ult/base58-bytestring";
      url = "";
      synopsis = "Implementation of BASE58 transcoding for ByteStrings";
      description = "Implementation of BASE58 transcoding copy-pasted from\nhaskoin package";
      buildType = "Simple";
    };
    components = {
      "base58-bytestring" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base58-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.quickcheck-assertions)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }