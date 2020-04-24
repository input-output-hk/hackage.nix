{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "FPretty"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "O.Chitil@kent.ac.uk";
      author = "Olaf Chitil";
      homepage = "http://www.cs.kent.ac.uk/~oc/pretty.html";
      url = "";
      synopsis = "Efficient simple pretty printing combinators";
      description = "A pretty printer turns a tree structure into indented text,\nsuch that the indentation reflects the tree structure. To keep\ntext short, substructures are put into a single line as far as\npossible. The library provides combinators for building\npretty printers. It emphasizes simplicity and efficiency.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }