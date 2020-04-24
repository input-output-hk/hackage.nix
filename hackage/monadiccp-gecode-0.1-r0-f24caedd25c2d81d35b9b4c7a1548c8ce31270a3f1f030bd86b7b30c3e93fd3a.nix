{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "monadiccp-gecode"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jrt@informatik.uni-kiel.de";
      author = "Tom Schrijvers, Pieter Wuille";
      homepage = "http://users.ugent.be/~tschrijv/MCP/";
      url = "";
      synopsis = "Constraint Programming";
      description = "Gecode extension for the Monadic Constraint Programming Framework (code generator and runtime solver backend)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."monadiccp" or ((hsPkgs.pkgs-errors).buildDepError "monadiccp"))
          ];
        libs = [
          (pkgs."gecodesupport" or ((hsPkgs.pkgs-errors).sysDepError "gecodesupport"))
          (pkgs."gecodeset" or ((hsPkgs.pkgs-errors).sysDepError "gecodeset"))
          (pkgs."gecodeint" or ((hsPkgs.pkgs-errors).sysDepError "gecodeint"))
          (pkgs."gecodekernel" or ((hsPkgs.pkgs-errors).sysDepError "gecodekernel"))
          (pkgs."gecodesearch" or ((hsPkgs.pkgs-errors).sysDepError "gecodesearch"))
          ];
        frameworks = [
          (pkgs."gecode" or ((hsPkgs.pkgs-errors).sysDepError "gecode"))
          ];
        buildable = true;
        };
      };
    }