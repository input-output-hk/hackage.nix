{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "product-isomorphic"; version = "0.0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://github.com/khibino/haskell-product-isomorphic";
      url = "";
      synopsis = "Weaken applicative functor on products";
      description = "Weaken applicative functor which allows only product\nconstruction. Product constructions and deconstructions\nare always isomorphic.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-data-compat" or ((hsPkgs.pkgs-errors).buildDepError "th-data-compat"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"));
        buildable = true;
        };
      tests = {
        "th" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."product-isomorphic" or ((hsPkgs.pkgs-errors).buildDepError "product-isomorphic"))
            ];
          buildable = true;
          };
        };
      };
    }