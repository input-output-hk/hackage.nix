{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "compactable"; version = "0.1.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fresheyeball@gmail.com";
      author = "Isaac Shapira";
      homepage = "";
      url = "";
      synopsis = "A typeclass for structures which can be catMaybed, filtered, and partitioned.";
      description = "This provides polymorphic implementations for filter, compact (catMaybes), and separate. It allows for higher performance implementations to be used in place of defaults for all data structures, and endeavors to centerally document those implementations. Compactable aims to be as general and unconstrained as possible, providing instances for non-Functors like Set, as well as some Contravariants (though not published here). Compactable fully subsumes Data.Witherable, offers more laws, and is more general.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.2.2") (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"));
        buildable = true;
        };
      };
    }