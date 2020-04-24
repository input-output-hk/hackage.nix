{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "LambdaINet"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul H. Liu <paul@thev.net>";
      author = "";
      homepage = "not available";
      url = "";
      synopsis = "Graphical Interaction Net Evaluator for Optimal Evaluation";
      description = "An experimental evaluator for Interaction Nets that encodes\noptimal and call-by-need strategies based on Lambdascope, with\nan interactive graphical interface based on OpenGL and GLFW.\nSee the README in source for more information.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "LambdaINet" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."GLFW" or ((hsPkgs.pkgs-errors).buildDepError "GLFW"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."monad-task" or ((hsPkgs.pkgs-errors).buildDepError "monad-task"))
            (hsPkgs."GLFW-task" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-task"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }