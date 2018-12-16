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
      specVersion = "1.8";
      identifier = {
        name = "cryptsy-api";
        version = "0.2.1";
      };
      license = "AGPL-3.0-only";
      copyright = "2013-5 Boyd Stephen Smith Jr.";
      maintainer = "bss@iguanasuicide.net";
      author = "Boyd Stephen Smith Jr.";
      homepage = "";
      url = "";
      synopsis = "Bindings for Cryptsy cryptocurrency exchange API.";
      description = "Bindings for Cryptsy cryptocurrency exchange API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.either)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.old-locale)
          (hsPkgs.pipes-attoparsec)
          (hsPkgs.pipes-http)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
    };
  }