{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "lifter"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Edwin Brady <eb@cs.st-andrews.ac.uk>";
      author = "ICFP Contest 2012 Organisers";
      homepage = "http://icfpcontest2012.wordpress.com/";
      url = "";
      synopsis = "A boulderdash-like game and solution validator";
      description = "ICFP Contest 2012 task";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lifter" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."stb-image" or ((hsPkgs.pkgs-errors).buildDepError "stb-image"))
            (hsPkgs."bitmap" or ((hsPkgs.pkgs-errors).buildDepError "bitmap"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }