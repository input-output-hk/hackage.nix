{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "containers"; version = "0.6.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Assorted concrete container types";
      description = "\nThis package contains efficient general-purpose implementations\nof various immutable container types including sets, maps, sequences,\ntrees, and graphs.\n\nFor a walkthrough of what this package provides with examples of common\noperations see the [containers\nintroduction](https://haskell-containers.readthedocs.io).\n\nThe declared cost of each operation is either worst-case or amortized, but\nremains valid even if structures are shared.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }