{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ridley"; version = "0.3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 IRIS Connect Ltd.";
      maintainer = "alfredo@irisconnect.co.uk";
      author = "Alfredo Di Napoli & the IRIS Connect Engineering Team";
      homepage = "https://github.com/iconnect/ridley#readme";
      url = "";
      synopsis = "Quick metrics to grow you app strong.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.katip)
          (hsPkgs.wai-middleware-metrics)
          (hsPkgs.template-haskell)
          (hsPkgs.ekg-core)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.shelly)
          (hsPkgs.transformers)
          (hsPkgs.prometheus)
          (hsPkgs.raw-strings-qq)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.process)
          (hsPkgs.string-conv)
          (hsPkgs.ekg-prometheus-adapter)
          (hsPkgs.inline-c)
          (hsPkgs.vector)
          (hsPkgs.unix)
          ];
        };
      tests = {
        "ridley-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ridley)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.ekg-core)
            (hsPkgs.prometheus)
            (hsPkgs.containers)
            (hsPkgs.microlens)
            (hsPkgs.ekg-prometheus-adapter)
            (hsPkgs.text)
            (hsPkgs.string-conv)
            (hsPkgs.http-client)
            ];
          };
        };
      };
    }