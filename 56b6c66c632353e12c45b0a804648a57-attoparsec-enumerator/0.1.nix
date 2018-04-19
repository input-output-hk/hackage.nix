{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "attoparsec-enumerator";
          version = "0.1";
        };
        license = "MIT";
        copyright = "Copyright (c) John Millikin 2010";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Convert an Attoparsec parser into an iteratee";
        description = "";
        buildType = "Simple";
      };
      components = {
        attoparsec-enumerator = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.enumerator
          ] ++ (if compiler.isGhc
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.extensible-exceptions
            ]);
        };
      };
    }