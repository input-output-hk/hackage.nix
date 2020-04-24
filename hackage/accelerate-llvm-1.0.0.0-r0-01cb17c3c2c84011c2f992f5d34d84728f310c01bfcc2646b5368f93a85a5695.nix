{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      debug = true;
      bounds-checks = true;
      unsafe-checks = true;
      internal-checks = true;
      chase-lev = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "accelerate-llvm"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "Accelerate backend generating LLVM";
      description = "This library implements direct LLVM IR generation for the /Accelerate/\nlanguage. For further information, refer to the main /Accelerate/ package:\n<http://hackage.haskell.org/package/accelerate>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."abstract-deque" or ((hsPkgs.pkgs-errors).buildDepError "abstract-deque"))
          (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
          (hsPkgs."llvm-hs" or ((hsPkgs.pkgs-errors).buildDepError "llvm-hs"))
          (hsPkgs."llvm-hs-pure" or ((hsPkgs.pkgs-errors).buildDepError "llvm-hs-pure"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ] ++ (pkgs.lib).optional (flags.chase-lev) (hsPkgs."chaselev-deque" or ((hsPkgs.pkgs-errors).buildDepError "chaselev-deque"));
        buildable = true;
        };
      };
    }