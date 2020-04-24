{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "darcs-benchmark"; version = "0.1.7"; };
      license = "BSD-3-Clause";
      copyright = "2009 Petr Rockai <me@mornfall.net>";
      maintainer = "Darcs Project <darcs-users@darcs.net>";
      author = "Eric Kow <kowey@darcs.net>, Simon Michael <simon@joyful.com>\nand Petr Rockai <me@mornfall.net>";
      homepage = "http://wiki.darcs.net/Development/Benchmarks";
      url = "";
      synopsis = "Comparative benchmark suite for darcs.";
      description = "A simple tool to compare performance of different Darcs 2.x\ninstances.  The program can download a set of test repositories,\nor you can provide your own. Run the program without parameters to\nget help.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "darcs-benchmark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."tabular" or ((hsPkgs.pkgs-errors).buildDepError "tabular"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
            (hsPkgs."uvector" or ((hsPkgs.pkgs-errors).buildDepError "uvector"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."tar" or ((hsPkgs.pkgs-errors).buildDepError "tar"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            ];
          buildable = true;
          };
        };
      };
    }