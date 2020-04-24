{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "cplex-hs"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Greg Horn 2012-2013, Stefan Jacholke 2016";
      maintainer = "Stefan Jacholke <stefanj@encrunch.com>";
      author = "Greg Horn, Stefan Jacholke";
      homepage = "https://github.com/stefan-j/cplex-haskell";
      url = "";
      synopsis = "high-level CPLEX interface";
      description = "High level interface to CPLEX";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = (pkgs.lib).optionals (system.isLinux) [
          (pkgs."cplex" or ((hsPkgs.pkgs-errors).sysDepError "cplex"))
          (pkgs."m" or ((hsPkgs.pkgs-errors).sysDepError "m"))
          (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
          ];
        buildable = true;
        };
      };
    }