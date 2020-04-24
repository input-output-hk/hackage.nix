{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "up"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Thomas Eding";
      homepage = "https://github.com/thomaseding/up";
      url = "";
      synopsis = "Command line tool to generate pathnames to facilitate moving upward in a file system.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "up" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."lambda-options" or ((hsPkgs.pkgs-errors).buildDepError "lambda-options"))
            ];
          buildable = true;
          };
        };
      };
    }