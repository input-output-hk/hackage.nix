{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4.0";
      identifier = { name = "BiobaseTypes"; version = "0.0.2.2"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "";
      url = "";
      synopsis = "(deprecated) Ring class, with several instances.";
      description = "Provides an algebraic ring class and instances for Gibbs free\nenergy, partition function probabilities, and scores.\nConversion between different entities is provided by a convert\nfunction. All entities are ready for the vector library.\n\n- Ignore everything except the Ring itself!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.vector) (hsPkgs.primitive) ];
        };
      };
    }