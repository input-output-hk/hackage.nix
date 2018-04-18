{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "scotty-binding-play";
          version = "1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yusuke Nomura <yunomu@gmail.com>";
        author = "Yusuke Nomura <yunomu@gmail.com>";
        homepage = "https://github.com/welmo/scotty-binding-play";
        url = "";
        synopsis = "The Play Framework style data binding in Scotty.";
        description = "The Play Framework style data binding in Scotty.";
        buildType = "Simple";
      };
      components = {
        scotty-binding-play = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.scotty
            hsPkgs.template-haskell
            hsPkgs.text
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.scotty-binding-play
              hsPkgs.bytestring
              hsPkgs.http-client
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.scotty
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
      };
    }