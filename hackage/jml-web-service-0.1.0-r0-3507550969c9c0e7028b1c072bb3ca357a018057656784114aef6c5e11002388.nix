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
        name = "jml-web-service";
        version = "0.1.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Jonathan M. Lange <jml@mumak.net>";
      author = "";
      homepage = "https://github.com/jml/jml-web-service#readme";
      url = "";
      synopsis = "Common utilities for running a web service";
      description = "This is a personal set of helper functions used to create a web API service.\n\nWe assume that the service is intended to run in a container on a Kubernetes\ncluster, but it\\'s likely that these routines would be useful for other\nservices.\n\nWe provide command-line options for use with optparse-applicative,\nPrometheus instrumentation, and some basic logging.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.clock)
          (hsPkgs.data-default)
          (hsPkgs.http-types)
          (hsPkgs.monad-logger)
          (hsPkgs.optparse-applicative)
          (hsPkgs.prometheus-client)
          (hsPkgs.prometheus-metrics-ghc)
          (hsPkgs.protolude)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.warp)
        ];
      };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.jml-web-service)
            (hsPkgs.protolude)
            (hsPkgs.tasty)
          ];
        };
      };
    };
  }