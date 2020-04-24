{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { derivedatatypeable = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "data-lens-fd"; version = "2.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Russell O'Connor <roconnor@theorem.ca>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/roconnor/data-lens-fd/";
      url = "";
      synopsis = "Lenses";
      description = "Lenses";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."data-lens" or ((hsPkgs.pkgs-errors).buildDepError "data-lens"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          ];
        buildable = true;
        };
      };
    }