{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ivory-serialize";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "leepike@galois.com";
        author = "Galois, Inc.";
        homepage = "";
        url = "";
        synopsis = "Serialization library for Ivory.";
        description = "Used to automatically pack and unpack Ivory structures in big or little endian.";
        buildType = "Simple";
      };
      components = {
        ivory-serialize = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.filepath
            hsPkgs.monadLib
            hsPkgs.ivory
            hsPkgs.ivory-artifact
          ];
        };
      };
    }