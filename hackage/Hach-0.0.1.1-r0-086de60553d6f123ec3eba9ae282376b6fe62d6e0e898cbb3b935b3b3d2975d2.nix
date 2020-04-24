{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Hach"; version = "0.0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Dmitry Malikov <malikov.d.y@gmail.com>";
      author = "Matvey Aksenov,\nDmitry Malikov";
      homepage = "http://github.com/dmalikov/HaCh";
      url = "";
      synopsis = "Simple chat";
      description = "Simple chat";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "hach-client" = { buildable = true; };
        "hach-nclient" = {
          depends = [
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            (hsPkgs."vty-ui" or ((hsPkgs.pkgs-errors).buildDepError "vty-ui"))
            ];
          buildable = true;
          };
        "hach-server" = { buildable = true; };
        };
      };
    }