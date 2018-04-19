{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "attoparsec-base64";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Athan Clark";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark";
        homepage = "https://github.com/athanclark/attoparsec-base64#readme";
        url = "";
        synopsis = "Fetch only base64 characters, erroring in the attoparsec monad on failure";
        description = "";
        buildType = "Simple";
      };
      components = {
        attoparsec-base64 = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.word8
          ];
        };
      };
    }