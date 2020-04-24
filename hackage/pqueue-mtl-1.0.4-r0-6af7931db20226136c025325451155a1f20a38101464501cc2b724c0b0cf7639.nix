{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "pqueue-mtl"; version = "1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wasserman.louis@gmail.com";
      author = "Louis Wasserman";
      homepage = "";
      url = "";
      synopsis = "Fully encapsulated monad transformers with queuelike functionality.";
      description = "Contains several implementations of data structures implementing a /single-in, single-out/ paradigm, and implements monad transformers for their safe use.  The monad transformer part of the library includes tools to fully encapsulate single-threaded use of a priority queue in a monad, including an array-based heap implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."stateful-mtl" or ((hsPkgs.pkgs-errors).buildDepError "stateful-mtl"))
          (hsPkgs."MaybeT" or ((hsPkgs.pkgs-errors).buildDepError "MaybeT"))
          ];
        buildable = true;
        };
      };
    }