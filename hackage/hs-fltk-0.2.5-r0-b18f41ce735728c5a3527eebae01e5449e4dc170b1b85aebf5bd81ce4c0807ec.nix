{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hs-fltk"; version = "0.2.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2004 Einar Karttunen";
      maintainer = "Einar Karttunen <ekarttun@cs.helsinki.fi>";
      author = "Einar Karttunen";
      homepage = "http://www.cs.helsinki.fi/u/ekarttun/hs-fltk/";
      url = "";
      synopsis = "Binding to GUI library FLTK";
      description = "hs-fltk is a Haskell interface to the FLTK.\nFLTK is a small and portable GUI toolkit and\nthe interface tries to be quite highlevel.\n\nThe library is very much a work in progress.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [
          (pkgs."fltk" or ((hsPkgs.pkgs-errors).sysDepError "fltk"))
          (pkgs."fltk_images" or ((hsPkgs.pkgs-errors).sysDepError "fltk_images"))
          ];
        buildable = true;
        };
      };
    }