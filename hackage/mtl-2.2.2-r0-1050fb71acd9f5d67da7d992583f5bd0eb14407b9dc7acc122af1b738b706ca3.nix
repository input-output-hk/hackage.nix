{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mtl"; version = "2.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Edward Kmett <ekmett@gmail.com>";
      author = "Andy Gill";
      homepage = "http://github.com/haskell/mtl";
      url = "";
      synopsis = "Monad classes, using functional dependencies";
      description = "Monad classes using functional dependencies, with instances\nfor various monad transformers, inspired by the paper\n/Functional Programming with Overloading and Higher-Order Polymorphism/,\nby Mark P Jones, in /Advanced School of Functional Programming/, 1995\n(<http://web.cecs.pdx.edu/~mpj/pubs/springschool.html>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }