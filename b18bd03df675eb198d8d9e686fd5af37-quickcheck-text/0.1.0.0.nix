{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quickcheck-text";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2015 Sharif Olorin";
        maintainer = "sio@tesser.org";
        author = "Sharif Olorin";
        homepage = "";
        url = "";
        synopsis = "Alternative arbitrary instance for Text";
        description = "The usual Arbitrary instance for Text\n(in\n<https://hackage.haskell.org/package/quickcheck-instances quickcheck-instances>)\nonly has single-byte\ninstances and so isn't an ideal representation of a valid UTF-8\ncharacter. This package has generators for one-, two- and three-byte\nUTF-8 characters (all that are currently in use).";
        buildType = "Simple";
      };
      components = {
        quickcheck-text = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.quickcheck-text
              hsPkgs.text
            ];
          };
        };
      };
    }