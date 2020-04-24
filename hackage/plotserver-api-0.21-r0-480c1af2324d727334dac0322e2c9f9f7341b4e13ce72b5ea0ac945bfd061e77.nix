{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "plotserver-api"; version = "0.21"; };
      license = "MIT";
      copyright = "";
      maintainer = "daniel.torok@prezi.com";
      author = "Daniel Torok";
      homepage = "";
      url = "";
      synopsis = "Plotserver API";
      description = "A lightweight API for Prezi's opensourced Plotserver (https:\\/\\/github.com\\/prezi\\/plotserver)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          ];
        buildable = true;
        };
      };
    }