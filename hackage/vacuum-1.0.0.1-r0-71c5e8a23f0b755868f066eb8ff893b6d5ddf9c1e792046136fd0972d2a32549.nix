{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "vacuum"; version = "1.0.0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "(c) Matt Morrow 2009";
      maintainer = "Conrad Parker <conrad@metadecks.org>";
      author = "Matt Morrow";
      homepage = "http://web.archive.org/web/20100410115820/http://moonpatio.com/vacuum/";
      url = "";
      synopsis = "Extract graph representations of ghc heap values.";
      description = "<http://web.archive.org/web/20100410115820/http://moonpatio.com/vacuum/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }