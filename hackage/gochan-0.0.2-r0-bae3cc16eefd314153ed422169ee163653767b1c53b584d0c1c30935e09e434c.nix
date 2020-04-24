{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gochan"; version = "0.0.2"; };
      license = "MIT";
      copyright = "Copyright (C) 2016 Charles Strahan";
      maintainer = "Charles Strahan <charles@cstrahan.com>";
      author = "Charles Strahan <charles@cstrahan.com>";
      homepage = "http://github.com/cstrahan/gochan";
      url = "";
      synopsis = "Go-style channels";
      description = "This library provides bounded channels similar to those popularized\nby the Go programming language.\n\nTHIS LIBRARY IS STILL ALPHA AND SUBJECT TO CHANGE.\n\nBreaking changes during the 0.0.X series won't result in a major\nversion bump (I hope to release a stable 1.0.0 soon).\n\nPlease give gochan a try and file an issue or pull request if you\ndiscover any ways to improve this library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "vector-algorithms"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      exes = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."gochan" or ((hsPkgs.pkgs-errors).buildDepError "gochan"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        "weight" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."weigh" or ((hsPkgs.pkgs-errors).buildDepError "weigh"))
            (hsPkgs."gochan" or ((hsPkgs.pkgs-errors).buildDepError "gochan"))
            ];
          buildable = true;
          };
        };
      tests = {
        "fuzz" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-core" or ((hsPkgs.pkgs-errors).buildDepError "hspec-core"))
            (hsPkgs."hspec-core" or ((hsPkgs.pkgs-errors).buildDepError "hspec-core"))
            (hsPkgs."gochan" or ((hsPkgs.pkgs-errors).buildDepError "gochan"))
            ];
          buildable = true;
          };
        };
      };
    }