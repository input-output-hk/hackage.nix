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
        name = "http-client-extra";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014-7(c) Marcin Tolysz";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "";
      url = "";
      synopsis = "wrapper for http-client exposing cookies";
      description = "wrapper for http-client exposing cookies";
      buildType = "Simple";
    };
    components = {
      "http-client-extra" = {
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