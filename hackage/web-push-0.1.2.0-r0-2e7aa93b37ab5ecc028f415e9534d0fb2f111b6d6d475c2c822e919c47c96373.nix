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
        name = "web-push";
        version = "0.1.2.0";
      };
      license = "MIT";
      copyright = "2017 Sarthak Bagaria";
      maintainer = "neokits@gmail.com";
      author = "Sarthak Bagaria";
      homepage = "https://github.com/sarthakbagaria/web-push#readme";
      url = "";
      synopsis = "Send messages using Web Push protocol.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "web-push" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.text)
          (hsPkgs.cryptonite)
          (hsPkgs.binary)
          (hsPkgs.memory)
          (hsPkgs.random)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.exceptions)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.jose)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "web-push-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.web-push)
            (hsPkgs.hspec)
            (hsPkgs.bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.binary)
          ];
        };
      };
    };
  }