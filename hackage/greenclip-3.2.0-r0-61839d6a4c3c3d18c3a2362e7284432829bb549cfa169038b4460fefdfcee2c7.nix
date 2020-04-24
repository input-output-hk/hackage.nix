{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "greenclip"; version = "3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Erèbe";
      maintainer = "romain.gerard@erebe.eu";
      author = "Erèbe - Romain GERARD";
      homepage = "https://github.com/erebe/greenclip#readme";
      url = "";
      synopsis = "Simple clipboard manager to be integrated with rofi";
      description = "Simple clipboard manager to be integrated with rofi - Please see README.md";
      buildType = "Simple";
      };
    components = {
      exes = {
        "greenclip" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."microlens-mtl" or ((hsPkgs.pkgs-errors).buildDepError "microlens-mtl"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."wordexp" or ((hsPkgs.pkgs-errors).buildDepError "wordexp"))
            (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
            ];
          pkgconfig = [
            (pkgconfPkgs."x11" or ((hsPkgs.pkgs-errors).pkgConfDepError "x11"))
            (pkgconfPkgs."xcb" or ((hsPkgs.pkgs-errors).pkgConfDepError "xcb"))
            (pkgconfPkgs."xau" or ((hsPkgs.pkgs-errors).pkgConfDepError "xau"))
            (pkgconfPkgs."xdmcp" or ((hsPkgs.pkgs-errors).pkgConfDepError "xdmcp"))
            ];
          buildable = true;
          };
        };
      };
    }