{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "http-test";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tomn@openbrain.org";
      author = "OpenBrain Ltd";
      homepage = "https://github.com/openbrainsrc/http-test";
      url = "";
      synopsis = "Test framework for HTTP APIs";
      description = "A simple framework for making assertions about the\nresponses of HTTP servers.\n\n> import Test.HTTP\n> import Data.List (isInfixOf)\n>\n> main = defaultMain \$ httpTestCase \"BayesHive landing page\" \"https://bayeshive.com\" \$ do\n>     landing <- get \"/\"\n>     assert \"Correct blog link\" \$\n>       \"href=\\\"https://bayeshive.com/blog\\\"\" `isInfixOf` landing\n>     loginResult <- postForm \"/auth/page/email/login\"\n>                      [(\"email\", \"foo\"), (\"password\", \"bar\")]\n>     debug loginResult";
      buildType = "Simple";
    };
    components = {
      "http-test" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.aeson)
          (hsPkgs.wreq)
          (hsPkgs.tasty)
          (hsPkgs.tasty-hunit)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.http-client)
          (hsPkgs.time)
        ];
      };
      exes = {
        "test-http-test-bayeshive" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http-test)
          ];
        };
      };
    };
  }