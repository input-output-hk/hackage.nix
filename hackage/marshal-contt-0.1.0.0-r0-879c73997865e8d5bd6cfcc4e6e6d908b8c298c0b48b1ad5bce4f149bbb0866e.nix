{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "marshal-contt"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "";
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
          ];
        buildable = true;
        };
      };
    }