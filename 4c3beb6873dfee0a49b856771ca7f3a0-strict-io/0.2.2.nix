{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "strict-io";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Nicolas Pouillard";
        maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
        author = "Nicolas Pouillard";
        homepage = "";
        url = "";
        synopsis = "A library wrapping standard IO modules to provide strict IO.";
        description = "A thin layer on top standard IO modules like System.IO\nand Data.IORef that re-expose strict functions using the SIO\nmonad.";
        buildType = "Simple";
      };
      components = {
        strict-io = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.extensible-exceptions
          ];
        };
      };
    }