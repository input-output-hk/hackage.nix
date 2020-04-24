{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "hsmagick"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) Tim Chevalier, 2008";
      maintainer = "chevalier@alum.wellesley.edu";
      author = "Tim Chevalier";
      homepage = "http://community.haskell.org/~tim";
      url = "";
      synopsis = "FFI bindings for the GraphicsMagick library";
      description = "FFI bindings for the GraphicsMagick library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ];
        libs = [
          (pkgs."tiff" or ((hsPkgs.pkgs-errors).sysDepError "tiff"))
          (pkgs."jasper" or ((hsPkgs.pkgs-errors).sysDepError "jasper"))
          (pkgs."jpeg" or ((hsPkgs.pkgs-errors).sysDepError "jpeg"))
          (pkgs."png" or ((hsPkgs.pkgs-errors).sysDepError "png"))
          (pkgs."wmflite" or ((hsPkgs.pkgs-errors).sysDepError "wmflite"))
          (pkgs."bz2" or ((hsPkgs.pkgs-errors).sysDepError "bz2"))
          (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z"))
          (pkgs."m" or ((hsPkgs.pkgs-errors).sysDepError "m"))
          (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
          ];
        pkgconfig = [
          (pkgconfPkgs."GraphicsMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "GraphicsMagick"))
          (pkgconfPkgs."lcms" or ((hsPkgs.pkgs-errors).pkgConfDepError "lcms"))
          (pkgconfPkgs."freetype2" or ((hsPkgs.pkgs-errors).pkgConfDepError "freetype2"))
          (pkgconfPkgs."libxml-2.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "libxml-2.0"))
          ];
        buildable = true;
        };
      };
    }