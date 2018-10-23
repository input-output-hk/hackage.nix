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
        name = "hslogstash";
        version = "0.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "https://github.com/bartavelle/hslogstash";
      url = "";
      synopsis = "A library to work with, or as, a logstash server";
      description = "This library contains a few modules that let you work with Logstash messages, read them from a Redis list, store them in or get them from Elasticsearch, and more.";
      buildType = "Simple";
    };
    components = {
      "hslogstash" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.aeson)
          (hsPkgs.parallel-io)
          (hsPkgs.text)
          (hsPkgs.network)
          (hsPkgs.network-conduit)
          (hsPkgs.iconv)
          (hsPkgs.http-conduit)
          (hsPkgs.time)
          (hsPkgs.text-format)
          (hsPkgs.http-types)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.stm-chans)
          (hsPkgs.stm-conduit)
          (hsPkgs.hedis)
          (hsPkgs.stm)
          (hsPkgs.attoparsec)
        ];
      };
      tests = {
        "conduits" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hslogstash)
            (hsPkgs.conduit)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.transformers)
            (hsPkgs.stm)
            (hsPkgs.split)
          ];
        };
      };
    };
  }