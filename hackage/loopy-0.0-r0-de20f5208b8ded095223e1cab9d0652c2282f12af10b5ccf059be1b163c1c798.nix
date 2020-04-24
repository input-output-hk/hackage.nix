{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "loopy"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "Emily Mitchell 2009-2011";
      maintainer = "Emily Mitchell <emily.g.h.mitchell@gmail.com>";
      author = "Emily Mitchell <emily.g.h.mitchell@gmail.com>";
      homepage = "http://www.esc.cam.ac.uk/people/research-students/emily-king";
      url = "";
      synopsis = "Find all biological feedback loops within an ecosystem graph.";
      description = "Find all biological feedback loops within an ecosystem graph.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "loopy" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."GoogleChart" or ((hsPkgs.pkgs-errors).buildDepError "GoogleChart"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }