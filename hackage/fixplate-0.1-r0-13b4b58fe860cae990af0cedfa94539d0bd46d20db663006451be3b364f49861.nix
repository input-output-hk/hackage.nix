{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      withquickcheck = false;
      base4 = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "fixplate";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Uniplate-style generic traversals for fixed-point types, with some extras.";
      description = "Uniplate-style generic traversals for fixed-point types, which can be\noptionally annotated with attributes. We also provide a generic zipper.\nSee the module \"Data.Generics.Fixplate\" and then the individual modules\nfor more detailed information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
        ] ++ pkgs.lib.optional (flags.withquickcheck) (hsPkgs.QuickCheck);
      };
    };
  }