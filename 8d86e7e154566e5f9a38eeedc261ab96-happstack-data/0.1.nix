{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      base4 = true;
      tests = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "happstack-data";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "Happstack data manipulation libraries";
      description = "This package provides libraries for:\n\n* Deriving instances for your datatypes.\n\n* Producing default values of Haskell datatypes.\n\n* Normalizing values of Haskell datatypes.\n\n* Marshalling Haskell values to and from XML.\n\n* Marshalling Haskell values to and from HTML forms.";
      buildType = "Simple";
    };
    components = {
      "happstack-data" = {
        depends  = [
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.syb-with-class)
          (hsPkgs.HaXml)
          (hsPkgs.happstack-util)
          (hsPkgs.bytestring)
          (hsPkgs.pretty)
          (hsPkgs.binary)
          (hsPkgs.containers)
        ] ++ (if _flags.base4
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = {
        "happstack-data-tests" = {
          depends  = [ (hsPkgs.HUnit) ];
        };
      };
    };
  }