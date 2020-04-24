{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "attoparsec-base64"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Athan Clark";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/attoparsec-base64#readme";
      url = "";
      synopsis = "Fetch only base64 characters, erroring in the attoparsec monad on failure";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."word8" or ((hsPkgs.pkgs-errors).buildDepError "word8"))
          ];
        buildable = true;
        };
      };
    }