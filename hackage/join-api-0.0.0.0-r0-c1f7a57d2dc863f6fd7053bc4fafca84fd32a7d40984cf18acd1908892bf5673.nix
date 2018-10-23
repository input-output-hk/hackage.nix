{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "join-api";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Kevin Cotrone";
      maintainer = "kevincotrone@gmail.com";
      author = "Kevin Cotrone";
      homepage = "https://github.com/cotrone/join-api#readme";
      url = "";
      synopsis = "Bindings for Join push notifications";
      description = "Bindings to the API for Join's notification system";
      buildType = "Simple";
    };
    components = {
      "join-api" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.url)
          (hsPkgs.wreq)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.lens)
        ];
      };
    };
  }