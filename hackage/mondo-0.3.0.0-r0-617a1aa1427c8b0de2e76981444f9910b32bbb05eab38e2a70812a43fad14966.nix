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
        name = "mondo";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael.gale@cl.cam.ac.uk";
      author = "Michael B. Gale";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for the Mondo API";
      description = "Provides Haskell bindings for the Mondo API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.transformers)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.authenticate-oauth)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.timerep)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mondo)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.servant-server)
            (hsPkgs.hspec)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.transformers)
            (hsPkgs.network)
            (hsPkgs.time)
            (hsPkgs.timerep)
          ];
        };
      };
    };
  }