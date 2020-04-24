{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "refh"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "i@raynes.me";
      author = "Anthony Grimes";
      homepage = "https://github.com/Raynes/refh";
      url = "";
      synopsis = "A command-line tool for pasting to https://www.refheap.com";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "refh" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskheap" or ((hsPkgs.pkgs-errors).buildDepError "haskheap"))
            (hsPkgs."clippard" or ((hsPkgs.pkgs-errors).buildDepError "clippard"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ];
          buildable = true;
          };
        };
      };
    }