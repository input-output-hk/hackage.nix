{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "GLFW-b"; version = "3.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>\n, Schell Scivally <schell.scivally@synapsegroup.com>\n, Pavel Krajcevski <krajcevski@gmail.com>";
      author = "Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "Bindings to GLFW OpenGL library";
      description = "Bindings to GLFW (<http://www.glfw.org/>), an open source, multi-platform\nlibrary for creating windows with OpenGL contexts and managing input and\nevents.\n\nGLFW-b depends on bindings-GLFW\n(<http://hackage.haskell.org/package/bindings-GLFW>), which, as of the time\nof this writing, binds to GLFW 3.3.0, released 2019-04-15\n(<http://www.glfw.org/Version-3.3.0-released.html>\n<http://www.glfw.org/changelog.html>).\n\nIf you've used GLFW < 3 before, you should read the transition guide\n(<http://www.glfw.org/docs/3.0/moving.html>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."bindings-GLFW" or ((hsPkgs.pkgs-errors).buildDepError "bindings-GLFW"))
          ];
        buildable = true;
        };
      tests = {
        "main" = {
          depends = [
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."bindings-GLFW" or ((hsPkgs.pkgs-errors).buildDepError "bindings-GLFW"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }