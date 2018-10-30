{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "AutoForms";
        version = "0.4.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
      maintainer = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
      author = "Mads Lindstrøm <mads_lindstroem@yahoo.dk>";
      homepage = "http://autoforms.sourceforge.net/";
      url = "";
      synopsis = "GUI library based upon generic programming (SYB3)";
      description = "AutoForms is a library to ease the creation of Graphical User\nInterfaces (GUI). It does this by using generic programming to\nconstruct GUI components.\n\nThe AutoForms user creates an ordinary algebraic data type (ADT),\nwhich should reflect the data model of an application. From this ADT\nAutoForms automatically constructs a GUI component, by using the\nstructure and identifiers of the ADT. To facilitate this construction,\nAutoForms uses the 'Scrap your boilerplate' approach to generic\nprogramming.\n\nThis component can be displayed using WxHaskell or by an AutoForms\ncustom monad called WxM.. The first facilitates that people who\nalready knows WxHaskell quickly will be able to make GUIs. The second\nis our attempt at a more type-safe and easier to use GUI toolkit.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.wx)
          (hsPkgs.wxcore)
          (hsPkgs.syb-with-class)
          (hsPkgs.array)
        ];
      };
    };
  }