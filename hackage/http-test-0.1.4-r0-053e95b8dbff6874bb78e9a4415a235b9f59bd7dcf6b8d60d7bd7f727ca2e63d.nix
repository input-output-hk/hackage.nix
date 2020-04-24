{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "http-test"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tomn@openbrain.org";
      author = "OpenBrain Ltd";
      homepage = "https://github.com/openbrainsrc/http-test";
      url = "";
      synopsis = "Test framework for HTTP APIs";
      description = "A simple framework for making assertions about the\nresponses of HTTP servers.\n\n> import Test.HTTP\n> import Data.List (isInfixOf)\n>\n> main = httpTest \$ do\n>   session \"BayesHive landing page\" \"https://bayeshive.com\" \$ do\n>     landing <- get \"/\"\n>     assert \"Correct blog link\" \$\n>       \"href=\\\"https://bayeshive.com/blog\\\"\" `isInfixOf` landing\n>     loginResult <- postForm \"/auth/page/email/login\"\n>                      [(\"email\", \"foo\"), (\"password\", \"bar\")]\n>     debug loginResult";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "test-http-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."http-test" or ((hsPkgs.pkgs-errors).buildDepError "http-test"))
            ];
          buildable = true;
          };
        };
      };
    }