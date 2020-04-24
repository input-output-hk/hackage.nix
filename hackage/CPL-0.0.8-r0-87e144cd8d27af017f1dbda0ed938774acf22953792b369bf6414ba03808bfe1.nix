{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { readline = true; haskeline = true; linuxstatic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "CPL"; version = "0.0.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "An interpreter of Hagino's Categorical Programming Language (CPL).";
      description = "An interpreter of Hagino's Categorical Programming Language (CPL).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cpl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ] ++ (if flags.readline
            then [
              (hsPkgs."readline" or ((hsPkgs.pkgs-errors).buildDepError "readline"))
              ]
            else (pkgs.lib).optional (flags.haskeline) (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline")));
          buildable = true;
          };
        };
      };
    }