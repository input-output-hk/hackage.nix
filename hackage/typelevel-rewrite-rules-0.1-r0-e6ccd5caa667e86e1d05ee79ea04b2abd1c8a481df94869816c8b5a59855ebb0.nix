{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "typelevel-rewrite-rules"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "gelisam+github@gmail.com";
      author = "Samuel Gélineau";
      homepage = "https://github.com/gelisam/typelevel-rewrite-rules#readme";
      url = "";
      synopsis = "Solve type equalities using custom type-level rewrite rules";
      description = "A typechecker plugin which allows the user to specify a set of domain-specific rewrite rules. These get applied whenever the compiler is unable to solve a type equality constraint, in the hope that the rewritten equality constraint will be easier to solve.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."ghc-tcplugins-extra" or ((hsPkgs.pkgs-errors).buildDepError "ghc-tcplugins-extra"))
          (hsPkgs."term-rewriting" or ((hsPkgs.pkgs-errors).buildDepError "term-rewriting"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "should-compile" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."typelevel-rewrite-rules" or ((hsPkgs.pkgs-errors).buildDepError "typelevel-rewrite-rules"))
            (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
            ];
          buildable = true;
          };
        };
      };
    }