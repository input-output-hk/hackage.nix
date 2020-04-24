{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "NearContextAlgebra"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hahn@geoinfo.tuwien.ac.at";
      author = "Jürgen Hahn";
      homepage = "";
      url = "";
      synopsis = "Context Algebra of near";
      description = "Model of the concept \"near\" influenced by several contexts";
      buildType = "Simple";
      };
    components = {
      exes = {
        "NearContextAlgebra" = {
          depends = [
            (hsPkgs."ContextAlgebra" or ((hsPkgs.pkgs-errors).buildDepError "ContextAlgebra"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."lattices" or ((hsPkgs.pkgs-errors).buildDepError "lattices"))
            (hsPkgs."multiset" or ((hsPkgs.pkgs-errors).buildDepError "multiset"))
            ];
          buildable = true;
          };
        };
      };
    }