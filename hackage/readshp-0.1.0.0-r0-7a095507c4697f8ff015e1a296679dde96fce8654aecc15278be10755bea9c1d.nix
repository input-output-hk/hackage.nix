{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "readshp"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "samvherwaarden@gmail.com";
      author = "Sam van Herwaarden";
      homepage = "";
      url = "";
      synopsis = "Code for reading ESRI Shapefiles.";
      description = "Provides code for binary parsing of ESRI shapefiles,\nwhere the .shp and the .dbf file are read. The code has\nnot been tested on a large variety of shapefiles so\nyour mileage may vary, but so far it has worked with\nno problems. At the moment only text and number fields\nin DBF files are read (the others are stored as\nByteString).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          ];
        buildable = true;
        };
      };
    }