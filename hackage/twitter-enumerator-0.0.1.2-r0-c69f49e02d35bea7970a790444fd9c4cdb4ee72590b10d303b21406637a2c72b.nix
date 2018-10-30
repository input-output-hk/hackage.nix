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
      specVersion = "1.6";
      identifier = {
        name = "twitter-enumerator";
        version = "0.0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "taka@himura.jp";
      author = "Takahiro HIMURA";
      homepage = "https://github.com/himura/twitter-enumerator";
      url = "";
      synopsis = "Twitter API package with enumerator interface and Streaming API support.";
      description = "This package uses enumerator package for access Twitter API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.authenticate)
          (hsPkgs.enumerator)
          (hsPkgs.http-types)
          (hsPkgs.http-enumerator)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-enumerator)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
        ];
      };
    };
  }