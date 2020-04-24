{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "MonadRandomLazy"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Norman Ramsey <nr@cs.tufts.edu>";
      author = "Norman Ramsey (following Koen Claessen)";
      homepage = "";
      url = "";
      synopsis = "Lazy monad for psuedo random-number generation.";
      description = "Support for lazy computations which consume random values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          ];
        buildable = true;
        };
      };
    }