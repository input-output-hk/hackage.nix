{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "metaheuristics"; version = "0.0.8"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2013 Richard Senington";
      maintainer = "sc06r2s@leeds.ac.uk";
      author = "Richard Senington & David Duke";
      homepage = "";
      url = "";
      synopsis = "Generalised local search within Haskell, for applications in combinatorial optimisation.";
      description = "This library operates by representing metaheuristics as generators of solutions, or\nstreams of solutions, which are themselves the result of resolving the interactions of\nother streams of values. The library contains combinators for constructing and\nmanaging these structures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Stream" or ((hsPkgs.pkgs-errors).buildDepError "Stream"))
          (hsPkgs."arrows" or ((hsPkgs.pkgs-errors).buildDepError "arrows"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }