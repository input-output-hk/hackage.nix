{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { graphics = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "haskell-igraph"; version = "0.2.0"; };
      license = "MIT";
      copyright = "(c) 2016 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "Imcomplete igraph bindings";
      description = "This is an attempt to create a complete bindings for the\nigraph<\"http://igraph.org/c/\"> library. Related work:\nhttps://hackage.haskell.org/package/igraph.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-lexing" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-lexing"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          ] ++ (pkgs.lib).optionals (flags.graphics) [
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-cairo" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-cairo"))
          ];
        libs = [
          (pkgs."igraph" or ((hsPkgs.pkgs-errors).sysDepError "igraph"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell-igraph" or ((hsPkgs.pkgs-errors).buildDepError "haskell-igraph"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-golden" or ((hsPkgs.pkgs-errors).buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }