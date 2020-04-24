{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Gleam"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bennye@tcd.ie";
      author = "bennye@tcd.ie";
      homepage = "";
      url = "";
      synopsis = "HTML Canvas graphics, animations and simulations.";
      description = "Gleam is a graphics library written in Haskell that uses the web-browser as a display.\nGleam is inspired by the Picture datatype from gloss Gloss and uses Threepenny-gui as its back-end local webserver.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."threepenny-gui" or ((hsPkgs.pkgs-errors).buildDepError "threepenny-gui"))
          ];
        buildable = true;
        };
      };
    }