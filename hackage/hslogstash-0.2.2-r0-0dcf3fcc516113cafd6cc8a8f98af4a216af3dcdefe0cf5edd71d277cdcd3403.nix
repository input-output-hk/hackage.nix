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
      specVersion = "1.8";
      identifier = {
        name = "hslogstash";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "";
      url = "";
      synopsis = "A library to work with, or as, a logstash server";
      description = "This library contains a few modules that let you work with Logstash messages, read them from a Redis list, store them into Elasticsearch, and more.";
      buildType = "Simple";
    };
    components = {
      "library" = {
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
        ];
      };
    };
  }