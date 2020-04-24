{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "c0check"; version = "0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ds@iai.uni-bonn.de";
      author = "Daniel Seidel";
      homepage = "";
      url = "";
      synopsis = "Simple C0 Parser";
      description = "The package contains a parser for C0-language that is introduced in the basic programming course \\\"Algorithmisches Denken und imperative Programmierung\\\" (WS 2011/12 and later) at the University of Bonn.\nThe program contained in the package will take a C source code file and test the content if it is conform to the C0-language specifications.\nThe answer is simply yes or no.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ];
        buildable = true;
        };
      exes = {
        "c0check" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."c0check" or ((hsPkgs.pkgs-errors).buildDepError "c0check"))
            ];
          buildable = true;
          };
        };
      };
    }