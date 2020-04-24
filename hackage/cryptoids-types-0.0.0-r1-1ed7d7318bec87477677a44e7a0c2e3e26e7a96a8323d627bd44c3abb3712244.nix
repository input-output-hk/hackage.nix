{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cryptoids-types"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aethoago@141.li";
      author = "Gregor Kleen";
      homepage = "";
      url = "";
      synopsis = "Shared types for encrypting internal object identifiers before exposure";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."path-pieces" or ((hsPkgs.pkgs-errors).buildDepError "path-pieces"))
          (hsPkgs."http-api-data" or ((hsPkgs.pkgs-errors).buildDepError "http-api-data"))
          ];
        buildable = true;
        };
      };
    }