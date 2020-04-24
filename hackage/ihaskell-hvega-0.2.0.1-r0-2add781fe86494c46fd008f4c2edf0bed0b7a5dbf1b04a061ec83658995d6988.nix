{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "ihaskell-hvega"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018, 2019 Douglas Burke";
      maintainer = "dburke.gw@gmail.com";
      author = "Douglas Burke";
      homepage = "https://github.com/DougBurke/hvega";
      url = "";
      synopsis = "IHaskell display instance for hvega types.";
      description = "Support Vega-Lite visualizations in IHaskell notebooks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."hvega" or ((hsPkgs.pkgs-errors).buildDepError "hvega"))
          (hsPkgs."ihaskell" or ((hsPkgs.pkgs-errors).buildDepError "ihaskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }