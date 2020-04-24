{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dump-core = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "enumerate"; version = "0.2.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "samboosalis@gmail.com";
      author = "Sam Boosalis";
      homepage = "https://github.com/sboosali/enumerate";
      url = "";
      synopsis = "enumerate all the values in a finite type (automatically)";
      description = "provides\n\n* (1) a typeclass for enumerating all values in a finite type,\n* (2) a generic instance for automatic deriving, and\n* (3) helpers that reify functions (partial or total, monadic or pure)\ninto a Map.\n\nsee the \"Enumerable\" module for extensive documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."spiros" or ((hsPkgs.pkgs-errors).buildDepError "spiros"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or ((hsPkgs.pkgs-errors).buildDepError "dump-core"));
        buildable = true;
        };
      exes = {
        "example-enumerate" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."enumerate" or ((hsPkgs.pkgs-errors).buildDepError "enumerate"))
            ];
          buildable = true;
          };
        };
      };
    }