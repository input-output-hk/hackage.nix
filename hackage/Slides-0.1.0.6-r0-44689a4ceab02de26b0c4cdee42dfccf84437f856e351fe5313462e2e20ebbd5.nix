{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Slides"; version = "0.1.0.6"; };
      license = "MIT";
      copyright = "";
      maintainer = "lukahorvat9@gmail.com";
      author = "Luka Horvat";
      homepage = "";
      url = "";
      synopsis = "Generate slides from Haskell code";
      description = "Make presentations in Haskell with diagrams";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."diagrams-svg" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-svg"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
          (hsPkgs."regexpr" or ((hsPkgs.pkgs-errors).buildDepError "regexpr"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          ];
        buildable = true;
        };
      };
    }