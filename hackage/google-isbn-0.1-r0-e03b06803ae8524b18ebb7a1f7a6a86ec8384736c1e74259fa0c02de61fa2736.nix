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
        name = "google-isbn";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alex@px.io";
      author = "Alexandre Peyroux";
      homepage = "https://github.com/apeyroux/google-isbn#readme";
      url = "";
      synopsis = "";
      description = "Basic utility to search an ISBN using the Google Books webservice";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.http-conduit)
          (hsPkgs.text)
        ];
      };
    };
  }