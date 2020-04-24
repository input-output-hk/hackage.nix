{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "quickbench"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright: (c) 2008-2016 Simon Michael";
      maintainer = "simon@joyful.com";
      author = "Simon Michael";
      homepage = "https://github.com/simonmichael/quickbench#readme";
      url = "";
      synopsis = "quick & easy benchmarking of command-line programs";
      description = "quickbench produces very simple output (elapsed seconds),\nas quickly as possible (running commands just once by default),\nand tabulates results from multiple executables.\nI find it very useful for quick and dirty, exploratory, and comparative measurements\nthat you can understand at a glance.\nPlease see the readme for more.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."docopt" or ((hsPkgs.pkgs-errors).buildDepError "docopt"))
          (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."tabular" or ((hsPkgs.pkgs-errors).buildDepError "tabular"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "quickbench" = {
          depends = [
            (hsPkgs."quickbench" or ((hsPkgs.pkgs-errors).buildDepError "quickbench"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      tests = {
        "quickbench-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."quickbench" or ((hsPkgs.pkgs-errors).buildDepError "quickbench"))
            ];
          buildable = true;
          };
        };
      };
    }