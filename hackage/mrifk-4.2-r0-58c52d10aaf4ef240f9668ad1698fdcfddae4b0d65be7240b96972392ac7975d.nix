{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "mrifk"; version = "4.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ennisbaradine@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Decompiles Glulx files";
      description = "Update of the mrifk decompiler to modern Haskell";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mrifk" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }