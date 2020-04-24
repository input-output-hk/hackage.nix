{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { runtimegecode = false; debug = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "monadiccp"; version = "0.7.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tom.schrijvers@ugent.be";
      author = "Tom Schrijvers, Pieter Wuille";
      homepage = "http://users.ugent.be/~tschrijv/MCP/";
      url = "";
      synopsis = "Constraint Programming";
      description = "Monadic Constraint Programming framework";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ];
        libs = (pkgs.lib).optionals (flags.runtimegecode) [
          (pkgs."gecodesupport" or ((hsPkgs.pkgs-errors).sysDepError "gecodesupport"))
          (pkgs."gecodeset" or ((hsPkgs.pkgs-errors).sysDepError "gecodeset"))
          (pkgs."gecodeint" or ((hsPkgs.pkgs-errors).sysDepError "gecodeint"))
          (pkgs."gecodekernel" or ((hsPkgs.pkgs-errors).sysDepError "gecodekernel"))
          (pkgs."gecodesearch" or ((hsPkgs.pkgs-errors).sysDepError "gecodesearch"))
          ];
        frameworks = (pkgs.lib).optional (flags.runtimegecode) (pkgs."gecode" or ((hsPkgs.pkgs-errors).sysDepError "gecode"));
        buildable = true;
        };
      };
    }