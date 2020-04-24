{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "load-balancing"; version = "1.0.1.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "rowens@sumall.com";
      author = "Rick Owens";
      homepage = "https://github.com/SumAll/haskell-load-balancing";
      url = "";
      synopsis = "Client-side load balancing utilities.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."PSQueue" or ((hsPkgs.pkgs-errors).buildDepError "PSQueue"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }