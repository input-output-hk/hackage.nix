{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gh-labeler"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Vincent Hanquez";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez";
      homepage = "https://github.com/vincenthz/gh-labeler#readme";
      url = "";
      synopsis = "Github Standard Labeler";
      description = "Please see the README on Github at <https://github.com/vincenthz/gh-labeler#readme>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gh-labeler" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."github" or ((hsPkgs.pkgs-errors).buildDepError "github"))
            (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }