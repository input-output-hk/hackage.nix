{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
      tests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "happstack-data";
          version = "0.5.0.3";
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
          depends  = (([
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.happstack-util
            hsPkgs.HaXml
            hsPkgs.mtl
            hsPkgs.pretty
            hsPkgs.syb-with-class
            hsPkgs.syb-with-class-instances-text
            hsPkgs.text
            hsPkgs.time
            hsPkgs.template-haskell
          ] ++ (if _flags.base4
            then [ hsPkgs.base hsPkgs.syb ]
            else [ hsPkgs.base ])) ++ [
            hsPkgs.syb-with-class
          ]) ++ pkgs.lib.optional _flags.tests hsPkgs.HUnit;
        };
        exes = {
          "happstack-data-tests" = {
            depends  = pkgs.lib.optional _flags.tests hsPkgs.HUnit;
          };
        };
      };
    }