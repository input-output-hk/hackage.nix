{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "djembe";
          version = "0.1.1.1";
        };
        license = "MIT";
        copyright = "2015 Reed Rosenbluth";
        maintainer = "Reed.Rosenbluth@gmail.com";
        author = "Reed Rosenbluth & Jonathan Dubin";
        homepage = "https://github.com/reedrosenbluth/Djembe";
        url = "";
        synopsis = "Hit drums with haskell";
        description = "A simple DSL for composing drum beats in haskell.\nDjembe uses the system MIDI device to play these beats.";
        buildType = "Simple";
      };
      components = {
        djembe = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.hmidi
            hsPkgs.random
            hsPkgs.QuickCheck
            hsPkgs.hspec
            hsPkgs.mtl
          ];
        };
        tests = {
          djembe-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.djembe
            ];
          };
        };
      };
    }