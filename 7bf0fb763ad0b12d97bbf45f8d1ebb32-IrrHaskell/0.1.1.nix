{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "IrrHaskell";
          version = "0.1.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "let at = \"@\" in concat [\"m.baranski\", at, \"sms.ed.ac.uk\"]";
        author = "Maciej Baranski";
        homepage = "";
        url = "";
        synopsis = "Haskell binding to the Irrlicht game engine.";
        description = "Haskell binding to the Irrlicht game engine.";
        buildType = "Simple";
      };
      components = {
        IrrHaskell = {
          depends  = [ hsPkgs.base ];
        };
      };
    }