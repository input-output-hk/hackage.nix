{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "gloss-raster"; version = "1.7.7.201204.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "benl@ouroborus.net";
      author = "Ben Lippmeier";
      homepage = "http://gloss.ouroborus.net";
      url = "";
      synopsis = "Parallel rendering of raster images.";
      description = "Legacy version for Haskell Platform 2012.04.\nYou will get better performance if you upgrade to the most recent version of GHC.\nParallel rendering of raster images.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
          (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
          ];
        buildable = true;
        };
      };
    }