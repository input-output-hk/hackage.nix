{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usepkgconfig = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hydra-hs"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "github@dustlab.com";
      author = "Marcel Ruegenberg";
      homepage = "https://github.com/mruegenberg/hydra-hs";
      url = "";
      synopsis = "Haskell binding to the Sixense SDK for the Razer Hydra";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          ];
        libs = (pkgs.lib).optional (!flags.usepkgconfig) (pkgs."sixense" or ((hsPkgs.pkgs-errors).sysDepError "sixense"));
        pkgconfig = (pkgs.lib).optional (flags.usepkgconfig) (pkgconfPkgs."libsixense" or ((hsPkgs.pkgs-errors).pkgConfDepError "libsixense"));
        buildable = true;
        };
      tests = {
        "hydra-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hydra-hs" or ((hsPkgs.pkgs-errors).buildDepError "hydra-hs"))
            ];
          buildable = true;
          };
        };
      };
    }