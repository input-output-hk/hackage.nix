{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "uom-plugin";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2015, Adam Gundry";
      maintainer = "Adam Gundry <adam@well-typed.com>";
      author = "Adam Gundry <adam@well-typed.com>";
      homepage = "https://github.com/adamgundry/uom-plugin";
      url = "";
      synopsis = "Units of measure as a GHC typechecker plugin";
      description = "The @uom-plugin@ library adds support for units of measure to GHC\nusing the new experimental facility for typechecker plugins, which\nis available in GHC 7.10 and later.  See\n\"Data.UnitsOfMeasure.Tutorial\" for an introduction to the library.";
      buildType = "Simple";
    };
    components = {
      "uom-plugin" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.ghc-tcplugins-extra)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.units-parser)
        ];
      };
      tests = {
        "test-uom-plugin" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.uom-plugin)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }