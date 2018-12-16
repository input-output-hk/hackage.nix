{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "harvest-api";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Mark Karpov <mkarpov@stackbuilders.com>";
      author = "Stack Builders";
      homepage = "https://github.com/stackbuilders/harvest-api";
      url = "";
      synopsis = "Bindings for Harvest API";
      description = "Bindings for Harvest API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.mtl)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.file-embed)
            (hsPkgs.harvest-api)
            (hsPkgs.hspec)
            (hsPkgs.time)
          ];
        };
      };
    };
  }