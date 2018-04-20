{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "enumerator";
          version = "0.2";
        };
        license = "MIT";
        copyright = "Copyright (c) John Millikin 2010";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "http://ianen.org/haskell/enumerator/";
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