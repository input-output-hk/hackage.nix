{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hiccup"; version = "0.35"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "consalus+hiccup@google.com";
      author = "Kyle Consalus";
      homepage = "http://code.google.com/p/hiccup/";
      url = "";
      synopsis = "Relatively efficient Tcl interpreter with support for basic operations";
      description = "Interpreter for a subset of tcl";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hiccup" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."readline" or ((hsPkgs.pkgs-errors).buildDepError "readline"))
            ];
          buildable = true;
          };
        };
      };
    }