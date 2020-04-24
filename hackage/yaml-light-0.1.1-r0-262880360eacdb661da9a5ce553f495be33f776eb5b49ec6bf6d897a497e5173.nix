{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "yaml-light"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael <dot> ilseman <at> gmail <dot> com";
      author = "Michael Ilseman";
      homepage = "";
      url = "";
      synopsis = "A light-weight wrapper with utility functions around HsSyck";
      description = "This package provides a light-weight algebraic data type representing parsed Yaml files. It is implemented as a more conveinent wrapper around the HsSyck package, and provides utility functions as well.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HsSyck" or ((hsPkgs.pkgs-errors).buildDepError "HsSyck"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }