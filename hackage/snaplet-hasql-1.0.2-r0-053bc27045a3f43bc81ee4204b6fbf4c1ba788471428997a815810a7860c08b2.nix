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
        name = "snaplet-hasql";
        version = "1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "eleventynine@gmail.com";
      author = "Mike Ledger";
      homepage = "https://github.com/mikeplus64/snaplet-hasql";
      url = "";
      synopsis = "A Hasql snaplet";
      description = "A hasql snaplet, including an auth backend.";
      buildType = "Simple";
    };
    components = {
      "snaplet-hasql" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.hasql)
          (hsPkgs.hasql-backend)
          (hsPkgs.clientsession)
          (hsPkgs.configurator)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.snap)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
        ];
      };
    };
  }