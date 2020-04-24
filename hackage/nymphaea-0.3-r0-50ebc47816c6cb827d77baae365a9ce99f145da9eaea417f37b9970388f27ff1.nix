{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "nymphaea"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Cale Gibbard <cgibbard@gmail.com>";
      author = "Cale Gibbard, Paolo Martini";
      homepage = "";
      url = "";
      synopsis = "An interactive GUI for manipulating L-systems";
      description = "An L-system is a small grammar specifying fractal functions, famous\nfor their uncanny resemblance to plants and other lifeforms.\nnymphaea displays these L-systems in an attractive visual manner, and\nallows you to manipulate them.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "nymphaea" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            ];
          buildable = true;
          };
        };
      };
    }