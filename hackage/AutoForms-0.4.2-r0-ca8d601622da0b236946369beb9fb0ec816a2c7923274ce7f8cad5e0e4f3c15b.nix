{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "AutoForms"; version = "0.4.2"; };
      license = "LicenseRef-LGPL";
      copyright = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
      maintainer = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
      author = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
      homepage = "http://autoforms.sourceforge.net/";
      url = "";
      synopsis = "GUI library based upon generic programming (SYB3)";
      description = "IMPORTANT! Development of AutoForms has stopped. In stead use\nWxGeneric (see\nhttp://lindstroem.wordpress.com/2008/05/03/introducing-wxgeneric/ )\nwhich is based upon AutoForms. Nonetheless, AutoForms may still a good\nresource for ideas.\n\nAutoForms is a library to ease the creation of Graphical User\nInterfaces (GUI). It does this by using generic programming to\nconstruct GUI components.\n\nThe AutoForms user creates an ordinary algebraic data type (ADT),\nwhich should reflect the data model of an application. From this ADT\nAutoForms automatically constructs a GUI component, by using the\nstructure and identifiers of the ADT. To facilitate this construction,\nAutoForms uses the 'Scrap your boilerplate' approach to generic\nprogramming.\n\nThis component can be displayed using WxHaskell or by an AutoForms\ncustom monad called WxM.. The first facilitates that people who\nalready knows WxHaskell quickly will be able to make GUIs. The second\nis our attempt at a more type-safe and easier to use GUI toolkit.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
          (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
          (hsPkgs."syb-with-class" or ((hsPkgs.pkgs-errors).buildDepError "syb-with-class"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }