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
      specVersion = "1.18";
      identifier = {
        name = "hipchat-hs";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Oswyn Brent 2015";
      maintainer = "oztastic703@gmail.com";
      author = "Oswyn Brent <oztastic703@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Hipchat API bindings in Haskell";
      description = "Hipchat API bindings in Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-casing)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.either)
          (hsPkgs.http-client)
          (hsPkgs.lens)
          (hsPkgs.network-uri)
          (hsPkgs.postgresql-simple)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.split)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
    };
  }