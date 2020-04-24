{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "Chitra"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ckkashyap@gmail.com";
      author = "C.K.Kashyap";
      homepage = "https://github.com/ckkashyap/Chitra";
      url = "";
      synopsis = "A platform independent mechanism to render graphics using vnc.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Chitra" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ];
          buildable = true;
          };
        };
      };
    }