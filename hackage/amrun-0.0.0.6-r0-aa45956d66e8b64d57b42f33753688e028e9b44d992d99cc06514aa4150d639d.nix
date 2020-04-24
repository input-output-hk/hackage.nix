{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "amrun"; version = "0.0.0.6"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "janis.voigtlaender@uni-due.de";
      author = "Daniel Seidel and Janis Voigtlaender";
      homepage = "";
      url = "";
      synopsis = "Interpreter for AM";
      description = "The package contains an interpreter for the AM-Language that is introduced in the basic programming course \\\"Algorithmisches Denken und imperative Programmierung\\\" (WS 2011/12 and later) at the University of Bonn.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "amrun" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }