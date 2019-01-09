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
        depends = [ (hsPkgs.base) (hsPkgs.hmatrix) ];
        libs = (pkgs.lib).optional (!flags.usepkgconfig) (pkgs."sixense");
        pkgconfig = (pkgs.lib).optional (flags.usepkgconfig) (pkgconfPkgs.libsixense);
        };
      tests = {
        "hydra-test" = { depends = [ (hsPkgs.base) (hsPkgs.hydra-hs) ]; };
        };
      };
    }