{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "aivika-transformers"; version = "4.3.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2016. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://www.aivikasoft.com/en/products/aivika.html";
      url = "";
      synopsis = "Transformers for the Aivika simulation library";
      description = "This package is a generalization of the Aivika [1] simulation library\nwith extensive use of monad transformers and type families.\n\n\\[1] <http://hackage.haskell.org/package/aivika>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."aivika" or ((hsPkgs.pkgs-errors).buildDepError "aivika"))
          ];
        buildable = true;
        };
      };
    }