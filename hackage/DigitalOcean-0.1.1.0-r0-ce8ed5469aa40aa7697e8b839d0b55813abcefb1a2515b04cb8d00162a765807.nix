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
        name = "DigitalOcean";
        version = "0.1.1.0";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "lclarkmichalek@gmail.com";
      author = "Laurie Clark-Michalek";
      homepage = "";
      url = "";
      synopsis = "A client library for the DigitalOcean API";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.lens)
          (hsPkgs.wreq)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.transformers)
          (hsPkgs.exceptions)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.DigitalOcean)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.lens)
          ];
        };
      };
    };
  }