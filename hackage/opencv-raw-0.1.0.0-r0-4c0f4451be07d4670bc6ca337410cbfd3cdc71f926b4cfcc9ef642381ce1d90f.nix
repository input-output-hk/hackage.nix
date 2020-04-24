{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "opencv-raw"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nrujac@gmail.com";
      author = "Arjun Comar";
      homepage = "www.github.com/arjuncomar/opencv-raw.git";
      url = "";
      synopsis = "Raw Haskell bindings to OpenCV >= 2.0";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        pkgconfig = [
          (pkgconfPkgs."opencv" or ((hsPkgs.pkgs-errors).pkgConfDepError "opencv"))
          ];
        buildable = true;
        };
      };
    }