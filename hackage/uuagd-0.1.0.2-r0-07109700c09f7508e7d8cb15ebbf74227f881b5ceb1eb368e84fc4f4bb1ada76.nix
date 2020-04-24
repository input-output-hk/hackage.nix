{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "uuagd"; version = "0.1.0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Matthijs Steen <matthijssteen1990@gmail.com>";
      author = "Matthijs Steen <matthijssteen1990@gmail.com>";
      homepage = "https://github.com/matthijssteen/uuagd";
      url = "";
      synopsis = "A debugger for the UUAG system.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          ];
        buildable = true;
        };
      exes = {
        "uuagd" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }