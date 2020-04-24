{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hevolisa"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel.neun@gmx.de";
      author = "Daniel Neun";
      homepage = "";
      url = "";
      synopsis = "Genetic Mona Lisa problem in Haskell";
      description = "Hevolisa is an application that tries to approximate a bitmap image with colored polygons. It draws a set of random polygons which are changed/mutated in small random steps. There is an error function which compares the bitmap created from the polygons with the original image. If the error between the images is smaller than before then the new image replaces the old. This is done over and over again.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hevolisa" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }