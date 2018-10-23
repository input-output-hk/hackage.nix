{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "wai-request-spec";
        version = "0.8.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "Alej Cabrera 2015";
      maintainer = "cpp.cabrera@gmail.com";
      author = "Alej Cabrera";
      homepage = "https://gitlab.com/cpp.cabrera/wai-request-spec";
      url = "";
      synopsis = "Declarative request parsing";
      description = "WAI Request Spec is a declarative validation layer for HTTP\nrequests. It aims to make error-handling for malformed requests as\neasy as taking the happy path.\n\nA brief summary of the core features:\n\n* Can specify headers and query params as input sources\n* Support for parsing ints, floats, text, bytes (with encodings), and bools\n* A parser combinator interface for chaining together request requirements\n* Support for alternatives via `(<|>)`, each tried in turn until one succeeds\n* Support for optional parameters\n* Convenient and informative default error messages that let service\nconsumers know what went wrong\n\nIt is built on WAI, so it is compatible with several Haskell\nweb frameworks. All you need is the ability to access the Request\nobject, and WAI Request Spec takes care of the rest!";
      buildType = "Simple";
    };
    components = {
      "wai-request-spec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.http-types)
          (hsPkgs.case-insensitive)
        ];
      };
    };
  }