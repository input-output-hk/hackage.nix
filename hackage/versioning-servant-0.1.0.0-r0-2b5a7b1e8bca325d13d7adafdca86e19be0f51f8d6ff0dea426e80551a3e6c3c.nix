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
        name = "versioning-servant";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "(c) 2018 Lorenzo Tabacchini";
      maintainer = "lortabac@gmx.com";
      author = "Lorenzo Tabacchini";
      homepage = "https://github.com/lortabac/versioning";
      url = "";
      synopsis = "Servant combinators for the versioning library.";
      description = "This package provides Servant combinators to be used with\nthe 'versioning' library.";
      buildType = "Simple";
    };
    components = {
      "versioning-servant" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.http-media)
          (hsPkgs.servant)
          (hsPkgs.versioning)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.versioning)
            (hsPkgs.versioning-servant)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
          ];
        };
      };
    };
  }