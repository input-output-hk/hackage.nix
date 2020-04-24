{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "http-test"; version = "0.2.0.3"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
          (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
          (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          ];
        buildable = true;
        };
      exes = {
        "test-http-test-bayeshive" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."http-test" or ((hsPkgs.pkgs-errors).buildDepError "http-test"))
            ];
          buildable = true;
          };
        };
      };
    }