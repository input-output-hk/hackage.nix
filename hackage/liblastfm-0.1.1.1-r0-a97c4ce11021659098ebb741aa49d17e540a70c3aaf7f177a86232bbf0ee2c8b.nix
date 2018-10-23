{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "liblastfm";
        version = "0.1.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Matvey Aksenov <matvey.aksenov@gmail.com>";
      author = "Matvey Aksenov, Dmitry Malikov";
      homepage = "";
      url = "";
      synopsis = "Lastfm API interface";
      description = "Provides interface to Lastfm REST API, supports XML and JSON formats.";
      buildType = "Simple";
    };
    components = {
      "liblastfm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.cereal)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.pureMD5)
          (hsPkgs.crypto-api)
          (hsPkgs.network)
          (hsPkgs.aeson)
        ];
      };
      tests = {
        "json" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.aeson)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            (hsPkgs.liblastfm)
          ];
        };
      };
    };
  }