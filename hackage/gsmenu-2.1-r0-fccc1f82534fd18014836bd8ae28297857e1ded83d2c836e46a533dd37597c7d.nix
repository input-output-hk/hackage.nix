{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { use_xft = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "gsmenu"; version = "2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "athas@sigkill.dk";
      author = "Troels Henriksen";
      homepage = "http://sigkill.dk/programs/gsmenu";
      url = "";
      synopsis = "A visual generic menu";
      description = "Standalone port of XMonadContrib's GridSelect.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "gsmenu" = {
          depends = [
            (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
            (hsPkgs."X11-xshape" or ((hsPkgs.pkgs-errors).buildDepError "X11-xshape"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."getflag" or ((hsPkgs.pkgs-errors).buildDepError "getflag"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ] ++ (pkgs.lib).optional (flags.use_xft) (hsPkgs."X11-xft" or ((hsPkgs.pkgs-errors).buildDepError "X11-xft"));
          buildable = true;
          };
        };
      };
    }