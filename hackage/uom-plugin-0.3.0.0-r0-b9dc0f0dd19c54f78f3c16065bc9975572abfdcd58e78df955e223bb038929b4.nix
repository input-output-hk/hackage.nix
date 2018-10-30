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
      specVersion = "1.10";
      identifier = {
        name = "uom-plugin";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2018, Adam Gundry";
      maintainer = "Adam Gundry <adam@well-typed.com>";
      author = "Adam Gundry <adam@well-typed.com>";
      homepage = "https://github.com/adamgundry/uom-plugin#readme";
      url = "";
      synopsis = "Units of measure as a GHC typechecker plugin";
      description = "The @uom-plugin@ library adds support for units of measure to GHC\nusing the new experimental facility for typechecker plugins, which\nis available in GHC 7.10 and later.  See\n\"Data.UnitsOfMeasure.Tutorial\" for an introduction to the library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.ghc)
          (hsPkgs.ghc-tcplugins-extra)
          (hsPkgs.template-haskell)
          (hsPkgs.units-parser)
        ];
      };
      tests = {
        "hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
        "units" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.uom-plugin)
          ];
        };
      };
    };
  }