{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "secrm"; version = "0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Jon Slenk <slenk.jon@gmail.com>";
      author = "Jon Slenk";
      homepage = "";
      url = "";
      synopsis = "Example of writing \"secure\" file removal in Haskell rather than C.";
      description = "Writes to target file multiple times with random data, then erases it.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "secrm" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            ];
          buildable = true;
          };
        };
      };
    }