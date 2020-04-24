{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "feldspar-signal"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mararon@chalmers.se";
      author = "mararon";
      homepage = "https://github.com/markus-git/feldspar-signal";
      url = "";
      synopsis = "Signal Processing extension for Feldspar";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mainland-pretty" or ((hsPkgs.pkgs-errors).buildDepError "mainland-pretty"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."imperative-edsl" or ((hsPkgs.pkgs-errors).buildDepError "imperative-edsl"))
          (hsPkgs."monadic-edsl-priv" or ((hsPkgs.pkgs-errors).buildDepError "monadic-edsl-priv"))
          (hsPkgs."feldspar-language" or ((hsPkgs.pkgs-errors).buildDepError "feldspar-language"))
          (hsPkgs."feldspar-compiler" or ((hsPkgs.pkgs-errors).buildDepError "feldspar-compiler"))
          (hsPkgs."feldspar-compiler-shim" or ((hsPkgs.pkgs-errors).buildDepError "feldspar-compiler-shim"))
          ];
        buildable = true;
        };
      };
    }