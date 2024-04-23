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
      identifier = { name = "wrecker"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 skedge.me";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/skedgeme/wrecker#readme";
      url = "";
      synopsis = "An HTTP Performance Benchmarker";
      description = "'wrecker' is a library for creating HTTP benchmarks. It is designed for\nbenchmarking a series of HTTP request were the output of previous requests\nare used as inputs to the next request. This is useful for complex API\nprofiling situations.\n'wrecker' does not provide any mechanism for making HTTP calls. It works\nwith any HTTP client that produces a 'HttpException' during failure (so\nhttp-client and wreq will work out of the box).\nSee the documentation for examples of how to use 'wrecker' with\nbenchmarking scripts.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
          (hsPkgs."aeson-qq" or (errorHandler.buildDepError "aeson-qq"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."ansigraph" or (errorHandler.buildDepError "ansigraph"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."tabular" or (errorHandler.buildDepError "tabular"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."threads" or (errorHandler.buildDepError "threads"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."threads-extras" or (errorHandler.buildDepError "threads-extras"))
          (hsPkgs."clock-extras" or (errorHandler.buildDepError "clock-extras"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
          (hsPkgs."next-ref" or (errorHandler.buildDepError "next-ref"))
        ];
        buildable = true;
      };
      tests = {
        "wrecker-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wrecker" or (errorHandler.buildDepError "wrecker"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discovery" or (errorHandler.buildDepError "hspec-discovery"))
          ];
          buildable = true;
        };
      };
    };
  }