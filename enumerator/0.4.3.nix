{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "enumerator";
          version = "0.4.3";
        };
        license = "MIT";
        copyright = "Copyright (c) John Millikin 2010";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "http://john-millikin.com/software/enumerator/";
        url = "";
        synopsis = "Implementation of Oleg Kiselyov's left-fold enumerators";
        description = "Based on Oleg Kiselyov's IterateeM: <http://okmij.org/ftp/Haskell/Iteratee/IterateeM.hs>";
        buildType = "Simple";
      };
      components = {
        enumerator = {
          depends  = [
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.text
          ] ++ (if compiler.isGhc
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.extensible-exceptions
            ]);
        };
      };
    }