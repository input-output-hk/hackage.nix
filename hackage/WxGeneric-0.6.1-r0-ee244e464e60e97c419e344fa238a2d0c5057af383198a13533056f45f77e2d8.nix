{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "WxGeneric"; version = "0.6.1"; };
      license = "LicenseRef-LGPL";
      copyright = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
      maintainer = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
      author = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
      homepage = "http://www.haskell.org/haskellwiki/WxGeneric";
      url = "";
      synopsis = "Generic (SYB3) construction of wxHaskell widgets";
      description = "Using an algebraic data types structure and field names, this library constructs\nwidgets for wxHaskell. It can handle data types with single or multiple\nconstructors, as well as recursive data types.\n\nThe library is designed to integrate smoothly with wxHaskell. First, by making it\neasy to integrate WxGeneric-widgets into existing wxHaskell programs. Second, by\nletting a user extend WxGeneric using mostly wxHaskell function.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."SybWidget" or ((hsPkgs.pkgs-errors).buildDepError "SybWidget"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."xtc" or ((hsPkgs.pkgs-errors).buildDepError "xtc"))
          (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
          ];
        buildable = true;
        };
      };
    }