{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { analyse = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "fibon"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dmp@rice.edu";
      author = "David M Peixotto";
      homepage = "http://github.com/dmpots/fibon/wiki";
      url = "";
      synopsis = "A reworking of the classic nofib benchmark suite";
      description = "Fibon is a set of tools for running and analyzing benchmark programs.\nThe fibon package contains the tools for benchmarking, but not the\nbenchmarks themselves. The package will build, but will not have any\nbenchmarks to run. A set of benchmarks can be found at\nhttp://github.com/dmpots/fibon-benchmarks\nInstalling the cabal package will get you the following tools\n* fibon - runs the benchmarks\n* fibon-analyse - analyses the results of a benchmark run\n* fibon-init - generate a benchmark description from a cabal file\nSee http://github.com/dmpots/fibon/wiki for more details";
      buildType = "Custom";
      };
    components = {
      exes = {
        "fibon-run" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        "fibon-init" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            ];
          buildable = true;
          };
        "fibon-analyse" = {
          depends = (pkgs.lib).optionals (flags.analyse) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."tabular" or ((hsPkgs.pkgs-errors).buildDepError "tabular"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
            ];
          buildable = if flags.analyse then true else false;
          };
        };
      };
    }