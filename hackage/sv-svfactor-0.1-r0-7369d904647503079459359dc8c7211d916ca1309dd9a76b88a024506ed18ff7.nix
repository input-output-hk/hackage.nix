{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sv-svfactor"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "george@qfpl.io";
      author = "George Wilson";
      homepage = "https://github.com/qfpl/sv";
      url = "";
      synopsis = "sv-core + svfactor";
      description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nUse sv-core's decoding atop svfactor's parser";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."sv-core" or ((hsPkgs.pkgs-errors).buildDepError "sv-core"))
          (hsPkgs."svfactor" or ((hsPkgs.pkgs-errors).buildDepError "svfactor"))
          (hsPkgs."validation" or ((hsPkgs.pkgs-errors).buildDepError "validation"))
          ];
        buildable = true;
        };
      };
    }