{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pursuit-client"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Gil Mizrahi";
      maintainer = "soupiral@gmail.com";
      author = "Gil Mizrahi";
      homepage = "https://github.com/soupi/pursuit-client";
      url = "";
      synopsis = "A cli client for pursuit";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."taggy-lens" or ((hsPkgs.pkgs-errors).buildDepError "taggy-lens"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "pursuit-search" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."pursuit-client" or ((hsPkgs.pkgs-errors).buildDepError "pursuit-client"))
            ];
          buildable = true;
          };
        };
      };
    }