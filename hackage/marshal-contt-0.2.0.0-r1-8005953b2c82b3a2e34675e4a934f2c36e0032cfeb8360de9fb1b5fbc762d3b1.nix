{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "marshal-contt"; version = "0.2.0.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2019 Alexis Williams";
      maintainer = "alexis@typedr.at";
      author = "Alexis Williams";
      homepage = "https://github.com/typedrat/marshal-contt";
      url = "";
      synopsis = "A ContT-based wrapper for Haskell-to-C marshalling functions.";
      description = "See <https://github.com/typedrat/marshal-contt/blob/master/README.md>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."kan-extensions" or ((hsPkgs.pkgs-errors).buildDepError "kan-extensions"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }