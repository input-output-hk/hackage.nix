{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "graph-matchings"; version = "0.1.0.0"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "last name + m _at_ in.tum.de";
      author = "Manuel Eberl";
      homepage = "";
      url = "";
      synopsis = "An implementation of algorithms for matchings in graphs";
      description = "This package provides algorithms on matchings in graphs; in particular, determining whether a given set of edges is a (maximal/maximum) matching and finding maximal/maximum matchings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          ];
        buildable = true;
        };
      };
    }