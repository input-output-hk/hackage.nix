{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rosmsg-bin"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Alexander Krupenkin";
      maintainer = "mail@akru.me";
      author = "Alexander Krupenkin";
      homepage = "https://github.com/RoboticsHS/rosmsg-bin#readme";
      url = "";
      synopsis = "ROS message management tools";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rosmsg" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."rospkg" or ((hsPkgs.pkgs-errors).buildDepError "rospkg"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        "genhs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."stack" or ((hsPkgs.pkgs-errors).buildDepError "stack"))
            (hsPkgs."rospkg" or ((hsPkgs.pkgs-errors).buildDepError "rospkg"))
            (hsPkgs."rosmsg" or ((hsPkgs.pkgs-errors).buildDepError "rosmsg"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            ];
          buildable = true;
          };
        };
      };
    }