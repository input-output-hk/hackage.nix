{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Hach"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Dmitry Malikov <malikov.d.y@gmail.com>";
      author = "Matvey Aksenov,\nDmitry Malikov";
      homepage = "http://github.com/dmalikov/HaCh";
      url = "";
      synopsis = "Simple chat";
      description = "Simple example of chat application. Consists of 3 components: hach-server, hach-client (simple console client), hach-nclient (vty-ui client).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      exes = {
        "hach-client" = { buildable = true; };
        "hach-nclient" = {
          depends = [
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            (hsPkgs."vty-ui" or ((hsPkgs.pkgs-errors).buildDepError "vty-ui"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "hach-server" = {
          depends = [
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }