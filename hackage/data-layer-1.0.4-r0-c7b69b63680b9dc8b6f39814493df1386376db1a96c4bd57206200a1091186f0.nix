{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "data-layer"; version = "1.0.4"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2015 Wojciech Danilo";
      maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
      author = "Wojciech Danilo";
      homepage = "https://github.com/wdanilo/layer";
      url = "";
      synopsis = "Data layering utilities. Layer is a data-type which wrapps other one, but keeping additional information. If you want to access content of simple newtype object, use Lens.Wrapper instead.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."convert" or ((hsPkgs.pkgs-errors).buildDepError "convert"))
          (hsPkgs."data-construction" or ((hsPkgs.pkgs-errors).buildDepError "data-construction"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }