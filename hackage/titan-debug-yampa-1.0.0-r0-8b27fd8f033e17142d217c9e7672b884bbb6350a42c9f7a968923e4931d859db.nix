{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "titan-debug-yampa"; version = "1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "All Rights Reserved (c) 2018 - 2020 Keera Studios Ltd\n\nAll Rights Reserved (c) 2015 - 2017 Ivan Perez Dominguez";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://github.com/keera-studios/haskell-titan";
      url = "";
      synopsis = "Testing Infrastructure for Temporal AbstractioNs - Interactive Yampa debugging layer.";
      description = "Yampa debugger that allows you to run an FRP program and control its\nexecution.\n\nTITAN (Testing Infrastructure for Temporal AbstractioNs) is a framework to\ntest and debug FRP programs. It allows you to write temporal unit tests, check\nthem, QuickCheck them, run FRP programs with a fine-tuned debugger, obtain\ninformation to replicate tests, and follow and control the execution of a\nYampa program from an interactive GUI.\n\nThis library provides a replacement function for Yampa's standard simulation\nfunction (@reactimate@), enabling debugging.\n\nIt also provides a definition of the standard communication interface with\nthe debugging GUI, and a default implementation of a communication bridge\nsuitable for standalone desktop applications using TCP sockets.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."IfElse" or ((hsPkgs.pkgs-errors).buildDepError "IfElse"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."network-bsd" or ((hsPkgs.pkgs-errors).buildDepError "network-bsd"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
          ];
        buildable = true;
        };
      exes = {
        "titan-debug-yampa-example-bouncing-ball" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or ((hsPkgs.pkgs-errors).buildDepError "SDL-gfx"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            (hsPkgs."titan-debug-yampa" or ((hsPkgs.pkgs-errors).buildDepError "titan-debug-yampa"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      };
    }