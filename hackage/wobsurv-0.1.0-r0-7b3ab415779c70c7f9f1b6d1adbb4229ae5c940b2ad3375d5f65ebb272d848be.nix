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
        name = "wobsurv";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/wobsurv";
      url = "";
      synopsis = "A simple and highly performant HTTP file server";
      description = "Notable features:\n\n* Based on streaming. Produces the response while the request is still coming. It doesn't waste resources on incorrect or malicious requests by dismissing them right away. It is very gentle with memory.\n\n* Has a configurable limit of simultaneous connections. All exceeding requests get rejected with a \"Service Unavailable\" status with code 503.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
          (hsPkgs.network)
          (hsPkgs.network-simple)
          (hsPkgs.http-types)
          (hsPkgs.pipes-network)
          (hsPkgs.pipes)
          (hsPkgs.pipes-parse)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.pipes-text)
          (hsPkgs.pipes-safe)
          (hsPkgs.hastache)
          (hsPkgs.attoparsec)
          (hsPkgs.stm-containers)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.unordered-containers)
          (hsPkgs.stm)
          (hsPkgs.monad-control)
          (hsPkgs.transformers)
          (hsPkgs.base-prelude)
        ];
      };
      exes = {
        "wobsurv" = {
          depends = [
            (hsPkgs.wobsurv)
            (hsPkgs.system-filepath)
            (hsPkgs.system-fileio)
            (hsPkgs.network)
            (hsPkgs.yaml)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.unordered-containers)
            (hsPkgs.safe)
            (hsPkgs.base-prelude)
          ];
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.wobsurv)
            (hsPkgs.HTF)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.system-filepath)
            (hsPkgs.system-fileio)
            (hsPkgs.network)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.lifted-async)
            (hsPkgs.mwc-random)
            (hsPkgs.safe)
            (hsPkgs.transformers)
            (hsPkgs.base-prelude)
          ];
        };
      };
    };
  }