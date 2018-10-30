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
        name = "async-dejafu";
        version = "0.1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@barrucadu.co.uk";
      author = "Michael Walker";
      homepage = "https://github.com/barrucadu/dejafu";
      url = "";
      synopsis = "Run MonadConc operations asynchronously and wait for their results.";
      description = "The <https://hackage.haskell.org/package/async async> library\nprovides a higher-level interface over threads, allowing users to\nconveniently run IO operations asynchronously and wait for their\nresults. This package is a reimplementation of async using the\n@MonadConc@ abstraction from\n<https://hackage.haskell.org/package/concurrency concurrency>, providing\neasy-to-use asynchronous operaitons within an easily-testable\nframework.\n\nThis library itself is tested with\n<https://hackage.haskell.org/package/dejafu dejafu>.\n\nWhen these functions are used in an IO context, the behaviour should\nappear identical to the original async package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.concurrency)
          (hsPkgs.exceptions)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async-dejafu)
            (hsPkgs.concurrency)
            (hsPkgs.dejafu)
            (hsPkgs.HUnit)
            (hsPkgs.hunit-dejafu)
          ];
        };
      };
    };
  }