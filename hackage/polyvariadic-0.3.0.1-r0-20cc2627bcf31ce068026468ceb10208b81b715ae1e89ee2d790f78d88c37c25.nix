{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "polyvariadic"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) Francesco Gazzetta 2017";
      maintainer = "francygazz@gmail.com";
      author = "Francesco Gazzetta";
      homepage = "https://github.com/fgaz/polyvariadic";
      url = "";
      synopsis = "Creation and application of polyvariadic functions";
      description = "Creation and application of polyvariadic functions, see the docs for usage and examples";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
        buildable = true;
        };
      };
    }