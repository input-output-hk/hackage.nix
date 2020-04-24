{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hext"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 David Anekstein";
      maintainer = "aneksteind@gmail.com";
      author = "David Anekstein";
      homepage = "https://github.com/aneksteind/hext#readme";
      url = "";
      synopsis = "a text classification library";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "hext-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hext" or ((hsPkgs.pkgs-errors).buildDepError "hext"))
            ];
          buildable = true;
          };
        };
      };
    }