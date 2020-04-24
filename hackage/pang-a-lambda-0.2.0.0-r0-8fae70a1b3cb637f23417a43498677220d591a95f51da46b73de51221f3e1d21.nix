{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { experiments = false; };
    package = {
      specVersion = "1.16";
      identifier = { name = "pang-a-lambda"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez";
      homepage = "";
      url = "";
      synopsis = "A super-pang clone";
      description = "An FRP implementation of superpang";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pang-a-lambda-dumbplayer" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or ((hsPkgs.pkgs-errors).buildDepError "SDL-gfx"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-arrowup" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or ((hsPkgs.pkgs-errors).buildDepError "SDL-gfx"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-stickyarrow" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or ((hsPkgs.pkgs-errors).buildDepError "SDL-gfx"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-player" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or ((hsPkgs.pkgs-errors).buildDepError "SDL-gfx"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-physics" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."IfElse" or ((hsPkgs.pkgs-errors).buildDepError "IfElse"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or ((hsPkgs.pkgs-errors).buildDepError "SDL-gfx"))
            (hsPkgs."SDL-ttf" or ((hsPkgs.pkgs-errors).buildDepError "SDL-ttf"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-circlingboxes" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-splittingboxes" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-split" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda-splitballs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."IfElse" or ((hsPkgs.pkgs-errors).buildDepError "IfElse"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or ((hsPkgs.pkgs-errors).buildDepError "SDL-gfx"))
            (hsPkgs."SDL-ttf" or ((hsPkgs.pkgs-errors).buildDepError "SDL-ttf"))
            ];
          buildable = if !flags.experiments then false else true;
          };
        "pang-a-lambda" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."IfElse" or ((hsPkgs.pkgs-errors).buildDepError "IfElse"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."SDL-gfx" or ((hsPkgs.pkgs-errors).buildDepError "SDL-gfx"))
            (hsPkgs."SDL-ttf" or ((hsPkgs.pkgs-errors).buildDepError "SDL-ttf"))
            ];
          buildable = true;
          };
        };
      };
    }