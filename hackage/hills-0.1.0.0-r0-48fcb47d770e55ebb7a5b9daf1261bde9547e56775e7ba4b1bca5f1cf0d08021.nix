{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hills"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 David Fletcher";
      maintainer = "david@bubblycloud.com";
      author = "David Fletcher";
      homepage = "http://www.bubblycloud.com/hills/";
      url = "";
      synopsis = "Generate STL models from SRTM elevation data.";
      description = "This program generates 3D models of areas of the\nearth's surface.\n\nIt uses the SRTM 90m elevation data from\nCGIAR-CSI which is downloadable free of charge\n(see <http://srtm.csi.cgiar.org/>).  It outputs STL.\n\nConsult README.md for full instructions.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hills" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }