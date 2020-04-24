{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      debug = true;
      bounds-checks = true;
      unsafe-checks = true;
      internal-checks = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "accelerate-llvm-native"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "Accelerate backend generating LLVM";
      description = "This library implements a backend for the /Accelerate/ language which\ngenerates LLVM-IR targeting multicore CPUs. For further information, refer\nto the main /Accelerate/ package:\n<http://hackage.haskell.org/package/accelerate>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
          (hsPkgs."accelerate-llvm" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-llvm"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
          (hsPkgs."libffi" or ((hsPkgs.pkgs-errors).buildDepError "libffi"))
          (hsPkgs."llvm-hs" or ((hsPkgs.pkgs-errors).buildDepError "llvm-hs"))
          (hsPkgs."llvm-hs-pure" or ((hsPkgs.pkgs-errors).buildDepError "llvm-hs-pure"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }