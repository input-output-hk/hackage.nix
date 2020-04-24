{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "iterio-server"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Amit Levy <levya at cs.stanford dot edu>";
      author = "Amit Levy";
      homepage = "https://github.com/alevy/iterio-server";
      url = "";
      synopsis = "Library for building servers with IterIO";
      description = "This module contains a set of generic building blocks for building servers with IterIO.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."ListLike" or ((hsPkgs.pkgs-errors).buildDepError "ListLike"))
          (hsPkgs."monadIO" or ((hsPkgs.pkgs-errors).buildDepError "monadIO"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."iterIO" or ((hsPkgs.pkgs-errors).buildDepError "iterIO"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }