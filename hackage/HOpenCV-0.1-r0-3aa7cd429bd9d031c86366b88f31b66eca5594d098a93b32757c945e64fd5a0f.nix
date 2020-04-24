{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "HOpenCV"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Noam Lewis <jones.noamle@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A binding for the OpenCV computer vision library";
      description = "Initial version with very limited bindings to OpenCV";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."MaybeT" or ((hsPkgs.pkgs-errors).buildDepError "MaybeT"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        libs = [
          (pkgs."cv" or ((hsPkgs.pkgs-errors).sysDepError "cv"))
          (pkgs."highgui" or ((hsPkgs.pkgs-errors).sysDepError "highgui"))
          ];
        buildable = true;
        };
      exes = {
        "test-hopencv" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          libs = [
            (pkgs."cv" or ((hsPkgs.pkgs-errors).sysDepError "cv"))
            (pkgs."highgui" or ((hsPkgs.pkgs-errors).sysDepError "highgui"))
            ];
          buildable = true;
          };
        };
      };
    }