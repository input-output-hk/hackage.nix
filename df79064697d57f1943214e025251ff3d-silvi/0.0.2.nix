{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "silvi";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dcartwright@layer3com.com";
        author = "Daniel Cartwright";
        homepage = "https://github.com/chessai/silvi#readme";
        url = "";
        synopsis = "A generator for different kinds of logs.";
        description = "A Haskell library for generating logs\nfrom user specifications.";
        buildType = "Simple";
      };
      components = {
        silvi = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.chronos
            hsPkgs.http-types
            hsPkgs.ip
            hsPkgs.quantification
            hsPkgs.savage
            hsPkgs.text
          ];
        };
      };
    }