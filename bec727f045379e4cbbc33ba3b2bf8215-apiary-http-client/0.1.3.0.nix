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
        name = "apiary-http-client";
        version = "0.1.3.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "winterland1989@gmail.com";
      author = "winterland";
      homepage = "https://github.com/winterland1989/apiary-http-client";
      url = "";
      synopsis = "A http client for Apiary.";
      description = "A HTTP Client for Apiary, using Apiary's extension api, suitable for proxying HTTP request to backend API, with flexible APIs and streamming proxying abilities.\n\nThis module also reexport Network.HTTP.Client.";
      buildType = "Simple";
    };
    components = {
      "apiary-http-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.types-compat)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.apiary)
          (hsPkgs.wai)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-builder)
          (hsPkgs.text)
        ];
      };
    };
  }