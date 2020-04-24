{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bini"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Tobias Weise 2016";
      maintainer = "tobias_weise@gmx.de";
      author = "Tobias Weise";
      homepage = "";
      url = "";
      synopsis = "A manipulation library for b(inary)ini files used in windows programms like the game Freelancer.";
      description = "A collection of various methods for reading and writing bini files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }