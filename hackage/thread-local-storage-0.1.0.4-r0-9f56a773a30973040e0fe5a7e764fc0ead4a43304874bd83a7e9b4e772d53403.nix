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
        name = "thread-local-storage";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan Newton";
      homepage = "";
      url = "";
      synopsis = "Several options for thread-local-storage (TLS) in Haskell.";
      description = "\nThread-local storage, or TLS, is an important ingredient in many\nalgorithms and data structures.\n\nThe GHC compiler does not provide a built-in notion of TLS either\nat the IO-thread or OS thread level.  This package provides a few\ndifferent implementations of a simple TLS API.\n\nAll exported modules provide exactly the same interface with\ndifferent implementations.  Run the included criterion benchmark\nsuite to ascertain which performs the best on your platform.\n\nExample criterion benchmark data can be found here (from an Intel Ivy-Bridge i7-3770 desktop):\n<http://www.cs.indiana.edu/~rrnewton/datasets/xmen_tls_report.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "test-tls" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.atomic-primops)
            (hsPkgs.containers)
          ];
        };
      };
      benchmarks = {
        "bench-haskell-tls" = {
          depends = [
            (hsPkgs.thread-local-storage)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.atomic-primops)
          ];
        };
      };
    };
  }