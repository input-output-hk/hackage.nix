{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "git-embed"; version = "0.0.1"; };
      license = "BSD-2-Clause";
      copyright = "2014 Emanuel Borsboom";
      maintainer = "Emanuel Borsboom <emanuel@borsboom.io>";
      author = "Emanuel Borsboom <emanuel@borsboom.io>";
      homepage = "https://github.com/borsboom/git-embed";
      url = "";
      synopsis = "Use TH to embed Git repo information.";
      description = "Use Template Haskell to embed Git revision, branch, and\ntag information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ];
        buildable = true;
        };
      };
    }