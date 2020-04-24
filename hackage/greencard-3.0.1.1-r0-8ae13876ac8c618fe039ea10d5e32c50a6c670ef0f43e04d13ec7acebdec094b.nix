{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "greencard"; version = "3.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "None";
      author = "Alastair Reid, Sigbjorn Finne, and Thomas Nordin";
      homepage = "http://www.haskell.org/greencard/";
      url = "";
      synopsis = "A foreign function interface pre-processor for Haskell";
      description = "Green Card is a foreign function interface preprocessor for Haskell,\nsimplifying the task of interfacing Haskell programs to external libraries\n(which are normally exposed via C interfaces). This package is of largely\nhistorical interest only.\n\nTo interface to an external function using Green Card, you write\na small procedure specification. The specification tells Green Card\nwhat (Haskell) type you want to give the function together with details\nof how the arguments (and results) to the Haskell function should\nbe marshalled to and from the data representation used by the external function.\nGreen Card will then generate gobs of low-level boilerplate code that\ntakes care of all the details.\n\nThis package supplies the executable, 'greencard', which needs GHC.\nFor the Foreign.GreenCard library, you need to install this first and then you can\ninstall greencard-lib (greencard-lib requires the greencard binary already installed).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "greencard" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }