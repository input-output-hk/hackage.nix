{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "second-transfer";
        version = "0.6.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015, Alcides Viamontes Esquivel";
      maintainer = "alcidesv@zunzun.se";
      author = "Alcides Viamontes Esquivel";
      homepage = "https://www.httptwo.com/second-transfer/";
      url = "";
      synopsis = "Second Transfer HTTP/2 web server";
      description = "Second Transfer HTTP/2 web server";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.bytestring)
          (hsPkgs.base16-bytestring)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.conduit)
          (hsPkgs.transformers)
          (hsPkgs.network-uri)
          (hsPkgs.hashtables)
          (hsPkgs.lens)
          (hsPkgs.http2)
          (hsPkgs.hslogger)
          (hsPkgs.hashable)
          (hsPkgs.attoparsec)
          (hsPkgs.clock)
          (hsPkgs.SafeSemaphore)
          (hsPkgs.pqueue)
          (hsPkgs.stm)
          (hsPkgs.deepseq)
          (hsPkgs.time)
        ];
        libs = [
          (pkgs."ssl")
          (pkgs."crypto")
        ];
        build-tools = [
          (hsPkgs.buildPackages.cpphs)
        ];
      };
      tests = {
        "compiling-ok" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.second-transfer)
            (hsPkgs.conduit)
          ];
        };
        "hunit-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.lens)
            (hsPkgs.HUnit)
            (hsPkgs.bytestring)
            (hsPkgs.http2)
            (hsPkgs.exceptions)
            (hsPkgs.base16-bytestring)
            (hsPkgs.network)
            (hsPkgs.text)
            (hsPkgs.binary)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.network-uri)
            (hsPkgs.hashtables)
            (hsPkgs.unordered-containers)
            (hsPkgs.hslogger)
            (hsPkgs.hashable)
            (hsPkgs.attoparsec)
            (hsPkgs.time)
            (hsPkgs.SafeSemaphore)
            (hsPkgs.pqueue)
            (hsPkgs.clock)
            (hsPkgs.stm)
            (hsPkgs.deepseq)
          ];
          build-tools = [
            (hsPkgs.buildPackages.cpphs)
          ];
        };
      };
    };
  }