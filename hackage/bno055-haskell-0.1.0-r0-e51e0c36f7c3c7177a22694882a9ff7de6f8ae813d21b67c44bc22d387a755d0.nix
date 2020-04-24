{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bno055-haskell"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2017 Edward Amsden";
      maintainer = "edwardamsden@gmail.com";
      author = "Edward Amsden";
      homepage = "https://bitbucket.org/fmapE/bno055-haskell";
      url = "";
      synopsis = "Library for communication with the Bosch BNO055 orientation sensor";
      description = "Library for controlling and reading the Bosch BNO055 absolute orientation sensor.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."h2c" or ((hsPkgs.pkgs-errors).buildDepError "h2c"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          ];
        buildable = true;
        };
      };
    }