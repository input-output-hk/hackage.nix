{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "mysnapsession-example"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Smith <cdsmith@gmail.com>";
      author = "Chris Smith <cdsmith@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Example projects using mysnapsession";
      description = "This is a collection of simple web applications that use\nthe mysnapsession package for stateful HTTP.\n\nAs of version 0.3, this uses Cabal's data file mechanism,\nso you'll need to install before you run to copy the\ndata files to where they are expected.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "animalgame" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."heist" or ((hsPkgs.pkgs-errors).buildDepError "heist"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."snap" or ((hsPkgs.pkgs-errors).buildDepError "snap"))
            (hsPkgs."snap-core" or ((hsPkgs.pkgs-errors).buildDepError "snap-core"))
            (hsPkgs."snap-server" or ((hsPkgs.pkgs-errors).buildDepError "snap-server"))
            (hsPkgs."mysnapsession" or ((hsPkgs.pkgs-errors).buildDepError "mysnapsession"))
            (hsPkgs."clientsession" or ((hsPkgs.pkgs-errors).buildDepError "clientsession"))
            ];
          buildable = true;
          };
        "clientcount" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."heist" or ((hsPkgs.pkgs-errors).buildDepError "heist"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."snap" or ((hsPkgs.pkgs-errors).buildDepError "snap"))
            (hsPkgs."snap-core" or ((hsPkgs.pkgs-errors).buildDepError "snap-core"))
            (hsPkgs."snap-server" or ((hsPkgs.pkgs-errors).buildDepError "snap-server"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."mysnapsession" or ((hsPkgs.pkgs-errors).buildDepError "mysnapsession"))
            ];
          buildable = true;
          };
        };
      };
    }