{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cirru-parser"; version = "0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "jiyiyiyiony@gmail.com";
      author = "JiyinYiyong";
      homepage = "https://github.com/Cirru/parser.hs";
      url = "";
      synopsis = "Cirru Parser in Haskell";
      description = "Cirru Parser in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          ];
        buildable = true;
        };
      };
    }