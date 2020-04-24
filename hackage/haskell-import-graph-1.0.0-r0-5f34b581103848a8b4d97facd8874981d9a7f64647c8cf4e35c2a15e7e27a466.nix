{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-import-graph"; version = "1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2015 ncaq";
      maintainer = "ncaq@ncaq.net";
      author = "ncaq";
      homepage = "";
      url = "";
      synopsis = "create haskell import graph for graphviz";
      description = "create haskell import graph for graphviz\nHow to:\n> cabal build\n> haskell-import-graph\nOr,\n> haskell-import-graph dist/build/foo/foo-tmp/bar.hi";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."classy-prelude" or ((hsPkgs.pkgs-errors).buildDepError "classy-prelude"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "haskell-import-graph" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell-import-graph" or ((hsPkgs.pkgs-errors).buildDepError "haskell-import-graph"))
            ];
          buildable = true;
          };
        };
      };
    }