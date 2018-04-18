{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "binary-communicator";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yves Parès <limestrael@gmail.com>";
        author = "Yves Parès";
        homepage = "";
        url = "";
        synopsis = "Flexible way to ease transmission of binary data.";
        description = "Simple datatype that makes easier to send and receive values in any MonadIO. Inspired by Gregory Crosswhite's 'binary-protocol' package.";
        buildType = "Simple";
      };
      components = {
        binary-communicator = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.mtl
          ];
        };
      };
    }