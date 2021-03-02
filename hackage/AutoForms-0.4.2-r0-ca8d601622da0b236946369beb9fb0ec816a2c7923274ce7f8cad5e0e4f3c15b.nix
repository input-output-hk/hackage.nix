{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.0";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
          (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
          (hsPkgs."syb-with-class" or (errorHandler.buildDepError "syb-with-class"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }