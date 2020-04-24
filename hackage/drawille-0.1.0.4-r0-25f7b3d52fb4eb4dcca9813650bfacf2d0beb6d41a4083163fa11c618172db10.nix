{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { no-tests = false; examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "drawille"; version = "0.1.0.4"; };
      license = "GPL-3.0-only";
      copyright = "(c) Pedro Yamada";
      maintainer = "Pedro Yamada <tacla.yamada@gmail.com>";
      author = "Pedro Yamada <tacla.yamada@gmail.com>";
      homepage = "https://github.com/yamadapc/haskell-drawille";
      url = "";
      synopsis = "A port of asciimoo's drawille to haskell";
      description = "A tiny library for drawing with braille.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "senoid" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."AC-Angle" or ((hsPkgs.pkgs-errors).buildDepError "AC-Angle"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "image2term" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."friday" or ((hsPkgs.pkgs-errors).buildDepError "friday"))
            (hsPkgs."terminal-size" or ((hsPkgs.pkgs-errors).buildDepError "terminal-size"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = if flags.no-tests then false else true;
          };
        };
      };
    }