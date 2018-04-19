{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "chell";
          version = "0.1.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/chell/";
        url = "";
        synopsis = "Quiet test runner";
        description = "";
        buildType = "Simple";
      };
      components = {
        chell = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.patience
            hsPkgs.random
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }