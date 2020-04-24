{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hakka"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "martin.ring@dfki.de";
      author = "Martin Ring";
      homepage = "";
      url = "";
      synopsis = "Minimal akka-inspired actor library";
      description = "Minimal akka-inspired actor library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "hakka-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hakka" or ((hsPkgs.pkgs-errors).buildDepError "hakka"))
            ];
          buildable = true;
          };
        };
      };
    }