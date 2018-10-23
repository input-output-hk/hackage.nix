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
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "eleventynine@gmail.com";
      author = "Mike Ledger";
      homepage = "";
      url = "";
      synopsis = "A Hasql snaplet";
      description = "";
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
          (hsPkgs.snap)
        ];
      };
    };
  }