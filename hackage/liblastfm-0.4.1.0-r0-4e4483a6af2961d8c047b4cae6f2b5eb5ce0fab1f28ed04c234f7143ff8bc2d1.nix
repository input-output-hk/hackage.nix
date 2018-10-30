{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { test-api = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "liblastfm";
        version = "0.4.1.0";
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
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.crypto-api)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.network-uri)
          (hsPkgs.profunctors)
          (hsPkgs.pureMD5)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.void)
          (hsPkgs.xml-conduit)
        ];
      };
      tests = {
        "api" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.lens-aeson)
            (hsPkgs.lens)
            (hsPkgs.liblastfm)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.xml-html-conduit-lens)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.contravariant)
            (hsPkgs.crypto-api)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations-lens)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.network-uri)
            (hsPkgs.profunctors)
            (hsPkgs.pureMD5)
            (hsPkgs.text)
            (hsPkgs.void)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-html-conduit-lens)
          ];
        };
      };
    };
  }