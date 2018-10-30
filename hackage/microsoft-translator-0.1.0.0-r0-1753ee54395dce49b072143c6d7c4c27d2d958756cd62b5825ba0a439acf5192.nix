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
        name = "microsoft-translator";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Cliff Harvey 2017";
      maintainer = "cs.hbar@gmail.com";
      author = "Cliff Harvey";
      homepage = "";
      url = "";
      synopsis = "Bindings to the Microsoft Translator API";
      description = "Bindings to the Microsoft Translator API";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-media)
          (hsPkgs.bytestring)
          (hsPkgs.http-api-data)
          (hsPkgs.mtl)
          (hsPkgs.time)
          (hsPkgs.xml)
          (hsPkgs.safe)
        ];
      };
    };
  }