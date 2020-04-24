{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "wai-request-spec"; version = "0.9.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Alej Cabrera 2015";
      maintainer = "cpp.cabrera@gmail.com";
      author = "Alej Cabrera";
      homepage = "https://gitlab.com/cpp.cabrera/wai-request-spec";
      url = "";
      synopsis = "Declarative request parsing";
      description = "WAI Request Spec is a declarative validation layer for HTTP\nrequests. It aims to make error-handling for malformed requests as\neasy as taking the happy path.\n\nA brief summary of the core features:\n\n* Can specify headers and query params as input sources\n\n* Support for parsing ints, floats, text, bytes (with encodings), and bools\n\n* A parser combinator interface for chaining together request requirements\n\n* Support for Alternatives\n\n* Support for optional parameters\n\n* Convenient and informative default error messages that let service\nconsumers know what went wrong\n\nIt is built on WAI, so it is compatible with several Haskell\nweb frameworks. All you need is the ability to access the Request\nobject, and WAI Request Spec takes care of the rest!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          ];
        buildable = true;
        };
      };
    }