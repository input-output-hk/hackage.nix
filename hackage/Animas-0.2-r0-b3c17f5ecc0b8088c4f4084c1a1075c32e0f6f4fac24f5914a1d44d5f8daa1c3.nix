{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Animas"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Edward Amsden (edwardamsden@gmail.com)";
      author = "Edward Amsden, Henrik Nilsson, Antony Courtney";
      homepage = "https://github.com/eamsden/Animas";
      url = "";
      synopsis = "Updated version of Yampa: a library for programming hybrid systems.";
      description = "A library for declarative programming of reactive systems. (Currently a fork of Yampa 0.9.2.3)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }