{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "stringsearch";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bos@serpentine.com";
        author = "Daniel Fischer, Chris Kuklewicz";
        homepage = "";
        url = "";
        synopsis = "";
        description = "Fast search of ByteStrings";
        buildType = "Custom";
      };
      components = {
        stringsearch = {
          depends  = if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.bytestring
            ]
            else [ hsPkgs.base ];
        };
      };
    }