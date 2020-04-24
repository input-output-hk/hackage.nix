{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "maybench"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<maybench-devel@googlegroups.com>";
      author = "Maybench developers";
      homepage = "http://code.google.com/p/maybench/";
      url = "";
      synopsis = "Automated benchmarking tool";
      description = "Maybench is a tool for comparing the performance\nbetween two versions of the same program, on a\nseries of benchmarks that you design.\n\nMaybench aims to be easy to use, almost as easy\nas running \"time your-program arg1..arg2\". Ideally,\nit should be a simple matter for outsiders to write\ntiming tests for your programming project and contribute\nthem as part of your performance testing suite.\n\nThe Darcs repository is available at <http://code.haskell.org/maybench>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."benchpress" or ((hsPkgs.pkgs-errors).buildDepError "benchpress"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ]);
        buildable = true;
        };
      exes = {
        "maybench" = {
          depends = [
            (hsPkgs."benchpress" or ((hsPkgs.pkgs-errors).buildDepError "benchpress"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
              ]);
          buildable = true;
          };
        "darcs-benchmark" = {
          depends = [
            (hsPkgs."benchpress" or ((hsPkgs.pkgs-errors).buildDepError "benchpress"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
              (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
              ]);
          buildable = true;
          };
        };
      };
    }