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
        name = "http-client-extra";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014-6(c) Marcin Tolysz";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "";
      url = "";
      synopsis = "wrapper for http-client exposing cookies";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.http-client)
          (hsPkgs.blaze-builder)
          (hsPkgs.http-client)
          (hsPkgs.base64-bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.http-types)
          (hsPkgs.data-default)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.exceptions)
          (hsPkgs.transformers)
          (hsPkgs.aeson)
        ];
      };
    };
  }