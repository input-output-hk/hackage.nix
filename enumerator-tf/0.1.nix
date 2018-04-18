{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "enumerator-tf";
          version = "0.1";
        };
        license = "MIT";
        copyright = "Copyright (c) John Millikin 2010";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "http://john-millikin.com/software/enumerator/";
        url = "";
        synopsis = "Enumerator instances for monads-tf classes";
        description = "";
        buildType = "Simple";
      };
      components = {
        enumerator-tf = {
          depends  = [
            hsPkgs.monads-tf
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