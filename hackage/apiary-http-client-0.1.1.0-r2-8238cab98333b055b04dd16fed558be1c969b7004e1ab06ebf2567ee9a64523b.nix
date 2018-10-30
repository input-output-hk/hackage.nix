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
        name = "apiary-http-client";
        version = "0.1.1.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.types-compat)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.apiary)
          (hsPkgs.wai)
          (hsPkgs.data-default-class)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
    };
  }