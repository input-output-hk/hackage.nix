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
      specVersion = "1.10";
      identifier = { name = "c2ats"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "2016 Kiwamu Okabe";
      maintainer = "kiwamu@debian.or.jp";
      author = "Kiwamu Okabe";
      homepage = "https://github.com/metasepi/c2ats#readme";
      url = "";
      synopsis = "Translate C code into ATS";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."language-c" or (errorHandler.buildDepError "language-c"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
        ];
        buildable = true;
      };
      exes = {
        "c2ats" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."c2ats" or (errorHandler.buildDepError "c2ats"))
          ];
          buildable = true;
        };
      };
      tests = {
        "c2ats-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-th" or (errorHandler.buildDepError "test-framework-th"))
            (hsPkgs."c2ats" or (errorHandler.buildDepError "c2ats"))
          ];
          buildable = true;
        };
      };
    };
  }