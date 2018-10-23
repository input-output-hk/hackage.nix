{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ridley-extras";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Alfredo Di Napoli & IRIS Connect Engineering Team";
      maintainer = "alfredo@irisconnect.co.uk";
      author = "Alfredo Di Napoli";
      homepage = "https://github.com/iconnect/ridley/ridley-extras#readme";
      url = "";
      synopsis = "Handy metrics that don't belong to ridley.";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "ridley-extras" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.prometheus)
          (hsPkgs.shelly)
          (hsPkgs.microlens)
          (hsPkgs.ekg-prometheus-adapter)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.ridley)
        ];
      };
      tests = {
        "ridley-extras-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ridley-extras)
          ];
        };
      };
    };
  }