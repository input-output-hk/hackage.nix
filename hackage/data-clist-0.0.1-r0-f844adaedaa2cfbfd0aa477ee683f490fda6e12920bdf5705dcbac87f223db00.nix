{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "data-clist"; version = "0.0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "John Van Enk <vanenkj@gmail.com>";
      author = "John Van Enk <vanenkj@gmail.com>";
      homepage = "";
      url = "http://github.com/sw17ch/data-ring";
      synopsis = "Simple functional ring type.";
      description = "Simple functional bidirectional ring type.\nGiven that the ring terminiology\nclashes with certain mathematical branches, we're using the term\nCList or CircularList instead.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }