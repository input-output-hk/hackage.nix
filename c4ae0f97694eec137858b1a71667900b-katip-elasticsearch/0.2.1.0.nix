{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      lib-werror = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "katip-elasticsearch";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Soostone Inc, 2015-2016";
      maintainer = "michael.xavier@soostone.com";
      author = "Ozgun Ataman, Michael Xavier";
      homepage = "";
      url = "";
      synopsis = "ElasticSearch scribe for the Katip logging framework.";
      description = "See README.md for more details.";
      buildType = "Simple";
    };
    components = {
      "katip-elasticsearch" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.katip)
          (hsPkgs.bloodhound)
          (hsPkgs.uuid)
          (hsPkgs.aeson)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.async)
          (hsPkgs.enclosed-exceptions)
          (hsPkgs.http-client)
          (hsPkgs.text)
          (hsPkgs.retry)
          (hsPkgs.exceptions)
          (hsPkgs.scientific)
          (hsPkgs.unordered-containers)
          (hsPkgs.transformers)
          (hsPkgs.http-types)
          (hsPkgs.time)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.katip-elasticsearch)
            (hsPkgs.katip)
            (hsPkgs.http-client)
            (hsPkgs.bloodhound)
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.text)
            (hsPkgs.http-types)
            (hsPkgs.aeson)
            (hsPkgs.vector)
            (hsPkgs.unordered-containers)
            (hsPkgs.scientific)
            (hsPkgs.time)
            (hsPkgs.stm)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.katip-elasticsearch)
            (hsPkgs.bloodhound)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
            (hsPkgs.rng-utils)
            (hsPkgs.uuid)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.aeson)
          ];
        };
      };
    };
  }