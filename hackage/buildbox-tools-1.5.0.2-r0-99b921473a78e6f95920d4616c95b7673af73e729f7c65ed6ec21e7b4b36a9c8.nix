{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "buildbox-tools"; version = "1.5.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "Ben Lippmeier";
      homepage = "http://code.ouroborus.net/buildbox";
      url = "";
      synopsis = "Tools for working with buildbox benchmark result files.";
      description = "Tools for working with buildbox benchmark result files.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "buildbox-results" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."buildbox" or ((hsPkgs.pkgs-errors).buildDepError "buildbox"))
            (hsPkgs."parseargs" or ((hsPkgs.pkgs-errors).buildDepError "parseargs"))
            ];
          buildable = true;
          };
        };
      };
    }