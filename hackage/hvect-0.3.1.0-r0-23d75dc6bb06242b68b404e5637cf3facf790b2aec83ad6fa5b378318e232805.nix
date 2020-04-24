{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hvect"; version = "0.3.1.0"; };
      license = "MIT";
      copyright = "(c) 2014 - 2016 Alexander Thiemann <mail@athiemann.net>, Tim Baumann <tim@timbaumann.info>";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>, Tim Baumann <tim@timbaumann.info>";
      homepage = "https://github.com/agrafix/hvect";
      url = "";
      synopsis = "Simple strict heterogeneous lists";
      description = "Small, concise and simple implementation of heterogeneous lists with useful utility functions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "hvect-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hvect" or ((hsPkgs.pkgs-errors).buildDepError "hvect"))
            (hsPkgs."HTF" or ((hsPkgs.pkgs-errors).buildDepError "HTF"))
            ];
          buildable = true;
          };
        };
      };
    }