{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bearriver = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "titan-record-yampa"; version = "1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "All Rights Reserved (c) 2018 - 2020 Keera Studios Ltd\nAll Rights Reserved (c) 2015 - 2017 Ivan Perez Dominguez";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://github.com/keera-studios/haskell-titan";
      url = "";
      synopsis = "Testing Infrastructure for Temporal AbstractioNs - Yampa record-and-replay layer";
      description = "Yampa debugger that allows you to run an FRP program and control its\nexecution.\n\nTITAN (Testing Infrastructure for Temporal AbstractioNs) is a framework to\ntest and debug FRP programs. It allows you to write temporal unit tests, check\nthem, QuickCheck them, run FRP programs with a fine-tuned debugger, obtain\ninformation to replicate tests, and follow and control the execution of a\nYampa program from an interactive GUI.\n\nThis library provides a replacement function for Yampa's standard simulation\nfunction (@reactimate@), that enables recording input into a file and reading\ninput from a file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (if flags.bearriver
          then [
            (hsPkgs."bearriver" or ((hsPkgs.pkgs-errors).buildDepError "bearriver"))
            ]
          else [
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            ]);
        buildable = true;
        };
      };
    }