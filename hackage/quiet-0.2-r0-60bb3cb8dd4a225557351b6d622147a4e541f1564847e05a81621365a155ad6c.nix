{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "quiet"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016-2020";
      maintainer = "jacob@stanley.io";
      author = "Jacob Stanley";
      homepage = "https://github.com/jacobstanley/quiet#readme";
      url = "";
      synopsis = "Generic deriving of Read/Show with no record labels.";
      description = "Please see the README on GitHub at <https://github.com/jacobstanley/quiet#readme>";
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
        "quiet-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."quiet" or ((hsPkgs.pkgs-errors).buildDepError "quiet"))
            ];
          buildable = true;
          };
        };
      };
    }