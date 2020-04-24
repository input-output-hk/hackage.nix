{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "timeit"; version = "2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2009, Lennart Augustsson";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>, Lennart Augustsson";
      author = "Lennart Augustsson";
      homepage = "https://github.com/merijn/timeit";
      url = "";
      synopsis = "Time monadic computations with an IO base.";
      description = "A simple wrapper to show the used CPU time of monadic computation with an\nIO base.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"));
        buildable = true;
        };
      };
    }