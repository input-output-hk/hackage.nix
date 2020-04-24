{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ersatz-toysat"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Masahiro Sakai";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai";
      homepage = "https://github.com/msakai/ersatz-toysat";
      url = "";
      synopsis = "toysat driver as backend for ersatz";
      description = "toysat driver as backend for ersatz";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."ersatz" or ((hsPkgs.pkgs-errors).buildDepError "ersatz"))
          (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
          ];
        buildable = true;
        };
      exes = {
        "ersatz-toysat-regexp-grid" = {
          depends = (pkgs.lib).optionals (flags.examples) ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."ersatz" or ((hsPkgs.pkgs-errors).buildDepError "ersatz"))
            (hsPkgs."ersatz-toysat" or ((hsPkgs.pkgs-errors).buildDepError "ersatz-toysat"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim")));
          buildable = if flags.examples then true else false;
          };
        "ersatz-toysat-sudoku" = {
          depends = (pkgs.lib).optionals (flags.examples) ([
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ersatz" or ((hsPkgs.pkgs-errors).buildDepError "ersatz"))
            (hsPkgs."ersatz-toysat" or ((hsPkgs.pkgs-errors).buildDepError "ersatz-toysat"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim")));
          buildable = if flags.examples then true else false;
          };
        };
      };
    }