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
        name = "WxGeneric";
        version = "0.8.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "Mads Lindstrøm <mads.lindstroem@gmail.com>";
      maintainer = "Mads Lindstrøm <mads.lindstroem@gmail.com>";
      author = "Mads Lindstrøm <mads.lindstroem@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/WxGeneric";
      url = "";
      synopsis = "Generic (SYB3) construction of wxHaskell widgets";
      description = "Using an algebraic data types structure and field names, this library constructs\nwidgets for wxHaskell. It can handle data types with single or multiple\nconstructors, as well as recursive data types.\n\nThe library is designed to integrate smoothly with wxHaskell. First, by making it\neasy to integrate WxGeneric-widgets into existing wxHaskell programs. Second, by\nletting a user extend WxGeneric using mostly wxHaskell function.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.SybWidget)
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.xtc)
          (hsPkgs.wx)
          (hsPkgs.containers)
          (hsPkgs.wxcore)
        ];
      };
    };
  }