{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "reservoir"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mah6@williams.edu";
      author = "Mark Hay";
      homepage = "https://github.com/ahaym/reservoir";
      url = "";
      synopsis = "Unweighted reservoir sampling";
      description = "From <https://en.wikipedia.org/wiki/Reservoir_sampling>: \"Reservoir sampling is a family of randomized algorithms for randomly choosing a sample of k items from a list S containing n items, where n is either a very large or unknown number. Typically n is large enough that the list doesn't fit into main memory.\"\nThis package implements Jeffrey Vitter's Algorithm R <http://www.cs.umd.edu/~samir/498/vitter.pdf>, suitable for unweighted sampling from a collection of unknown size.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }