{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "packer-messagepack";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017 Moritz Schulte";
        maintainer = "mtesseract@silverratio.net";
        author = "Moritz Schulte";
        homepage = "https://github.com/mtesseract/packer-messagepack#readme";
        url = "";
        synopsis = "MessagePack Serialization an Deserialization for Packer";
        description = "This package implements MessagePack on top of the Packer package.";
        buildType = "Simple";
      };
      components = {
        packer-messagepack = {
          depends  = [
            hsPkgs.base
            hsPkgs.packer
            hsPkgs.unliftio
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.safe-exceptions
          ];
        };
        tests = {
          packer-msgpack-test-suite = {
            depends  = [
              hsPkgs.base
              hsPkgs.packer
              hsPkgs.packer-messagepack
              hsPkgs.hedgehog
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.safe-exceptions
            ];
          };
        };
      };
    }