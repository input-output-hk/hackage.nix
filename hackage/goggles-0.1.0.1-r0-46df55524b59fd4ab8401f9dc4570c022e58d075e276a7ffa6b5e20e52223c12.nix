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
      specVersion = "1.10";
      identifier = {
        name = "goggles";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Marco Zocca";
      maintainer = "zocca.marco gmail";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/goggles";
      url = "";
      synopsis = "Interface to Google Cloud APIs";
      description = "High-level, extensible interface to Google Cloud APIs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.scientific)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.req)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          (hsPkgs.pem)
          (hsPkgs.x509)
          (hsPkgs.x509-store)
          (hsPkgs.unix-time)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.time)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.hspec)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.goggles)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }