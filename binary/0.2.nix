{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "binary";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Lennart Kolmodin";
        author = "Lennart Kolmodin <kolmodin@dtek.chalmers.se>";
        homepage = "";
        url = "";
        synopsis = "Binary serialization using lazy ByteStrings";
        description = "Efficient, pure binary serialisation using lazy ByteStrings";
        buildType = "Custom";
      };
      components = {
        binary = {
          depends  = [ hsPkgs.base ];
        };
      };
    }