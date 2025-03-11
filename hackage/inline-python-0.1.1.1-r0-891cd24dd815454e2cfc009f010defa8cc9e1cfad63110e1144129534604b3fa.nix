{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "inline-python"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "https://github.com/Shimuuar/inline-python";
      url = "";
      synopsis = "Python interpreter embedded into haskell.";
      description = "This package embeds python interpreter into haskell program and\nallows to write python snippets as quasiquotes. Values could be\neasily transferred between python and haskell. It's possible to\ncall haskell from python as well.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        pkgconfig = [
          (pkgconfPkgs."python3-embed" or (errorHandler.pkgConfDepError "python3-embed"))
        ];
        buildable = true;
      };
      sublibs = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."inline-python" or (errorHandler.buildDepError "inline-python"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
      tests = {
        "inline-python-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."inline-python" or (errorHandler.buildDepError "inline-python"))
            (hsPkgs."inline-python".components.sublibs.test or (errorHandler.buildDepError "inline-python:test"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = true;
        };
        "inline-python-tests1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."inline-python" or (errorHandler.buildDepError "inline-python"))
            (hsPkgs."inline-python".components.sublibs.test or (errorHandler.buildDepError "inline-python:test"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "pysmall" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."inline-python" or (errorHandler.buildDepError "inline-python"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
        "pysmall1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."inline-python" or (errorHandler.buildDepError "inline-python"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
      };
    };
  }