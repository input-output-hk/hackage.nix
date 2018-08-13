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
        name = "web-push";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2017 Sarthak Bagaria";
      maintainer = "neokits@gmail.com";
      author = "Sarthak Bagaria";
      homepage = "https://github.com/sarthakbagaria/web-push#readme";
      url = "";
      synopsis = "Helper functions to send messages using Web Push protocol.";
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
          (hsPkgs.jose)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }