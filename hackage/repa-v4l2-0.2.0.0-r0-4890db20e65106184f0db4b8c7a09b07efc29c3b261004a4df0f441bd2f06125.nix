{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "repa-v4l2"; version = "0.2.0.0"; };
      license = "LicenseRef-LGPL";
      copyright = "2011-2012, Christian Gosch";
      maintainer = "Christian Gosch <github@goschs.de>";
      author = "Christian Gosch";
      homepage = "https://github.com/cgo/hsimage";
      url = "";
      synopsis = "Provides high-level access to webcams.";
      description = "The current state is that the library provides a monad for\ngrabbing images from a webcam under Linux. In the future, more functionality like\nimage processing functions and other input devices may be added.\nIf anyone wants to help, please contact me!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."v4l2" or ((hsPkgs.pkgs-errors).buildDepError "v4l2"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."bmp" or ((hsPkgs.pkgs-errors).buildDepError "bmp"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."repa-v4l2" or ((hsPkgs.pkgs-errors).buildDepError "repa-v4l2"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            ];
          buildable = true;
          };
        };
      };
    }