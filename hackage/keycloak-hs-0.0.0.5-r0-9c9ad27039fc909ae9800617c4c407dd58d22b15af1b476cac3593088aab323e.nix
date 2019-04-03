{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "keycloak-hs"; version = "0.0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2019 Corentin Dupont";
      maintainer = "corentin.dupont@gmail.com";
      author = "Corentin Dupont";
      homepage = "https://github.com/cdupont/keycloak-hs#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/cdupont/keycloak-hs#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.http-client)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.word8)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.aeson-casing)
          (hsPkgs.http-api-data)
          (hsPkgs.http-types)
          (hsPkgs.hslogger)
          (hsPkgs.string-conversions)
          (hsPkgs.wreq)
          (hsPkgs.base64-bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.jwt)
          (hsPkgs.containers)
          ];
        };
      };
    }