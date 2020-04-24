{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "type-cache"; version = "1.0"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2016 Wojciech Danilo";
      maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
      author = "Wojciech Danilo";
      homepage = "https://github.com/wdanilo/type-cache";
      url = "";
      synopsis = "Utilities for caching type families results. Sometimes complex type families take long time to compile, so it is proficient to cache them and use the final result without the need of re-computation.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."lens-utils" or ((hsPkgs.pkgs-errors).buildDepError "lens-utils"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }