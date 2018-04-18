{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "HAppS-Data";
          version = "0.9.3";
        };
        license = "BSD-3-Clause";
        copyright = "2007 HAppS LLC";
        maintainer = "AlexJacobson@HAppS.org";
        author = "HAppS LLC";
        homepage = "";
        url = "";
        synopsis = "HAppS data manipulation libraries";
        description = "This package provides libraries for:\n\n* Deriving instances for your datatypes.\n\n* Producing default values of Haskell datatypes.\n\n* Normalizing values of Haskell datatypes.\n\n* Marshalling Haskell values to and from XML.\n\n* Marshalling Haskell values to and from HTML forms.";
        buildType = "Simple";
      };
      components = {
        HAppS-Data = {
          depends  = [
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.syb-with-class
            hsPkgs.HaXml
            hsPkgs.HAppS-Util
            hsPkgs.bytestring
            hsPkgs.pretty
            hsPkgs.binary
            hsPkgs.containers
          ] ++ (if _flags.base4
            then [ hsPkgs.base hsPkgs.syb ]
            else [ hsPkgs.base ]);
        };
      };
    }