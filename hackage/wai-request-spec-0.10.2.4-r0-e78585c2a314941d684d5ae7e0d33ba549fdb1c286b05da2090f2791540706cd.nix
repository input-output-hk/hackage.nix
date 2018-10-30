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
      specVersion = "1.18";
      identifier = {
        name = "wai-request-spec";
        version = "0.10.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "Allele Dev 2016";
      maintainer = "allele.dev@gmail.com";
      author = "Allele Dev";
      homepage = "https://gitlab.com/queertypes/wai-request-spec";
      url = "";
      synopsis = "Declarative request parsing";
      description = "WAI Request Spec is a declarative validation layer for HTTP\nrequests. It aims to make error-handling for malformed requests as\neasy as taking the happy path.\n\nA brief summary of the core features:\n\n* Can specify headers and query params as input sources\n\n* Support for parsing ints, floats, text, bytes (with encodings), and bools\n\n* A parser combinator interface for chaining together request requirements\n\n* Support for Alternatives\n\n* Support for optional parameters\n\n* Convenient and informative default error messages that let service\nconsumers know what went wrong\n\nIt is built on WAI, so it is compatible with several Haskell\nweb frameworks. All you need is the ability to access the Request\nobject, and WAI Request Spec takes care of the rest!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.wai)
        ];
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.http-types)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.wai-request-spec)
          ];
        };
      };
    };
  }