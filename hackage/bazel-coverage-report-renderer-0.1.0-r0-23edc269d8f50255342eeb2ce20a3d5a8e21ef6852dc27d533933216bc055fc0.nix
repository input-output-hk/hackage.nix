{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "bazel-coverage-report-renderer";
        version = "0.1.0";
        };
      license = "Apache-2.0";
      copyright = "2019 Tweag I/O Limited";
      maintainer = "m@tweag.io";
      author = "Tweag I/O Limited";
      homepage = "https://github.com/tweag/rules_haskell#readme";
      url = "";
      synopsis = "HTML Coverage Reports for Rules_Haskell";
      description = "Generate coverage reports from Rules_Haskell Bazel coverage output";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bazel-coverage-report-renderer" = {
          depends = [
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
            (hsPkgs."hxt-xpath" or ((hsPkgs.pkgs-errors).buildDepError "hxt-xpath"))
            (hsPkgs."listsafe" or ((hsPkgs.pkgs-errors).buildDepError "listsafe"))
            ];
          buildable = true;
          };
        };
      };
    }