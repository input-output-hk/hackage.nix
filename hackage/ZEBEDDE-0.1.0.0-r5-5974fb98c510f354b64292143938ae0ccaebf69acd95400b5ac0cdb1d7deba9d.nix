{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ZEBEDDE"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hackrilege@gmail.com";
      author = "Hackrilege";
      homepage = "";
      url = "";
      synopsis = "Polymer growth simulation method";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vect" or ((hsPkgs.pkgs-errors).buildDepError "vect"))
          ];
        buildable = true;
        };
      };
    }