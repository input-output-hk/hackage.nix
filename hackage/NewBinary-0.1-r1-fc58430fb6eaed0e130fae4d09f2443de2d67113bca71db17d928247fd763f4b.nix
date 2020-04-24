{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "NewBinary"; version = "0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A binary I/O library";
      description = "An older binary serialization library used by a number of\nprojects. For new projects consider an alternative such as 'binary'.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }