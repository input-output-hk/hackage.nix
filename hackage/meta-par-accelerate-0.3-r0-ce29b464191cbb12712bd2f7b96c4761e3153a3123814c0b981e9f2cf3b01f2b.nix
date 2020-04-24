{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { cuda = false; debug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "meta-par-accelerate"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Adam Foltzer 2011-2012";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Ryan Newton, Adam Foltzer 2011-2012";
      homepage = "https://github.com/simonmar/monad-par";
      url = "";
      synopsis = "Support for integrated Accelerate computations within Meta-par.";
      description = "This package provides a 'Control.Monad.Par.Meta.Resource' for building meta-par\n(<hackage.haskell.org/package/meta-par>) schedulers with GPU support.\nThis package also provides a complete scheduler for CPU plus GPU\nexecution.  It supports the 'Control.Monad.Par.Par' monad\nprogramming model with additional support for GPUs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."abstract-par" or ((hsPkgs.pkgs-errors).buildDepError "abstract-par"))
          (hsPkgs."meta-par" or ((hsPkgs.pkgs-errors).buildDepError "meta-par"))
          (hsPkgs."abstract-deque" or ((hsPkgs.pkgs-errors).buildDepError "abstract-deque"))
          (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
          (hsPkgs."accelerate-io" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-io"))
          (hsPkgs."abstract-par-accelerate" or ((hsPkgs.pkgs-errors).buildDepError "abstract-par-accelerate"))
          (hsPkgs."abstract-par-offchip" or ((hsPkgs.pkgs-errors).buildDepError "abstract-par-offchip"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ] ++ (pkgs.lib).optional (flags.cuda) (hsPkgs."accelerate-cuda" or ((hsPkgs.pkgs-errors).buildDepError "accelerate-cuda"));
        buildable = true;
        };
      };
    }