{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      bytestring-in-base = true;
      split-base = true;
      applicative-in-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "binary";
          version = "0.6.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Lennart Kolmodin, Don Stewart <dons@galois.com>";
        author = "Lennart Kolmodin <kolmodin@gmail.com>";
        homepage = "https://github.com/kolmodin/binary";
        url = "";
        synopsis = "Binary serialisation for Haskell values using lazy ByteStrings";
        description = "Efficient, pure binary serialisation using lazy ByteStrings.\nHaskell values may be encoded to and from binary formats,\nwritten to disk as binary, or sent over the network.\nSerialisation speeds of over 1 G\\/sec have been observed,\nso this library should be suitable for high performance\nscenarios.";
        buildType = "Simple";
      };
      components = {
        binary = {
          depends  = ((if _flags.bytestring-in-base
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.bytestring
            ]) ++ (if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
            ]
            else [ hsPkgs.base ])) ++ [
            hsPkgs.base
          ];
        };
      };
    }