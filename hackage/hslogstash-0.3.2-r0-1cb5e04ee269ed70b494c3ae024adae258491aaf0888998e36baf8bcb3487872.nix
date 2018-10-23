{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hslogstash";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "";
      url = "";
      synopsis = "A library to work with, or as, a logstash server";
      description = "This library contains a few modules that let you work with Logstash messages, read them from a Redis list, store them in or get them from Elasticsearch, and more.";
      buildType = "Simple";
    };
    components = {
      "hslogstash" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.time)
          (hsPkgs.text-format)
          (hsPkgs.attoparsec)
          (hsPkgs.hedis)
          (hsPkgs.conduit)
          (hsPkgs.transformers)
          (hsPkgs.http-conduit)
          (hsPkgs.iconv)
          (hsPkgs.network-conduit)
          (hsPkgs.containers)
          (hsPkgs.parallel-io)
          (hsPkgs.stm-conduit)
          (hsPkgs.http-types)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
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