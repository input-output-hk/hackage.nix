{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mollie-api-haskell"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Paramander";
      maintainer = "mats@paramander.com";
      author = "Paramander";
      homepage = "https://github.com/paramanders/mollie-api-haskell";
      url = "";
      synopsis = "Mollie API client for Haskell http://www.mollie.com";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.http-client)
          (hsPkgs.http-client-openssl)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.mtl)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          ];
        };
      tests = {
        "mollie-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.mollie-api-haskell) ];
          };
        };
      };
    }