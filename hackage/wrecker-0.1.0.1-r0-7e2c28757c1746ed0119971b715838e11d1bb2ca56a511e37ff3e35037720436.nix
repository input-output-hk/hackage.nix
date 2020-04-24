{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wrecker"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 skedge.me";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/skedgeme/wrecker#readme";
      url = "";
      synopsis = "A HTTP Performance Benchmarker";
      description = "'wrecker' is a library for creating HTTP benchmarks. It is designed for\nbenchmarking a series of HTTP request were the output of previous requests\nare used as inputs to the next request. This is useful for complex API\nprofiling situations.\n'wrecker' does not provide any mechanism for making HTTP calls. It works\nwith any HTTP client that produces a 'HttpException' during failure (so\nhttp-client and wreq will work out of the box).\nSee the documentation for examples of how to use 'wrecker' with\nbenchmarking scripts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."stm-chans" or ((hsPkgs.pkgs-errors).buildDepError "stm-chans"))
          (hsPkgs."aeson-qq" or ((hsPkgs.pkgs-errors).buildDepError "aeson-qq"))
          (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."ansigraph" or ((hsPkgs.pkgs-errors).buildDepError "ansigraph"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."tabular" or ((hsPkgs.pkgs-errors).buildDepError "tabular"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."threads" or ((hsPkgs.pkgs-errors).buildDepError "threads"))
          (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
          (hsPkgs."threads-extras" or ((hsPkgs.pkgs-errors).buildDepError "threads-extras"))
          (hsPkgs."clock-extras" or ((hsPkgs.pkgs-errors).buildDepError "clock-extras"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."stm-chans" or ((hsPkgs.pkgs-errors).buildDepError "stm-chans"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."unagi-chan" or ((hsPkgs.pkgs-errors).buildDepError "unagi-chan"))
          (hsPkgs."next-ref" or ((hsPkgs.pkgs-errors).buildDepError "next-ref"))
          ];
        buildable = true;
        };
      tests = {
        "wrecker-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wrecker" or ((hsPkgs.pkgs-errors).buildDepError "wrecker"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-discovery" or ((hsPkgs.pkgs-errors).buildDepError "hspec-discovery"))
            ];
          buildable = true;
          };
        };
      };
    }