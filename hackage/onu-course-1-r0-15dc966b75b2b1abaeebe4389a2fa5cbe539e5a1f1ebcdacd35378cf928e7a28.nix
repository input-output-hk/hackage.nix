{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "onu-course"; version = "1"; };
      license = "MIT";
      copyright = "Addison Wesley; Roman Cheplyaka";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Roman Cheplyaka";
      homepage = "";
      url = "";
      synopsis = "Code for the Haskell course taught at the Odessa National University in 2012";
      description = "Based on <http://hackage.haskell.org/package/Craft3e>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
          ];
        buildable = true;
        };
      };
    }