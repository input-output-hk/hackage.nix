{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rivet"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dbp@dbpmail.net";
      author = "Daniel Patterson";
      homepage = "https://github.com/dbp/rivet";
      url = "";
      synopsis = "A project management tool for Haskell applications.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rivet" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."rivet-core" or ((hsPkgs.pkgs-errors).buildDepError "rivet-core"))
            (hsPkgs."rivet-simple-deploy" or ((hsPkgs.pkgs-errors).buildDepError "rivet-simple-deploy"))
            ];
          buildable = true;
          };
        };
      };
    }