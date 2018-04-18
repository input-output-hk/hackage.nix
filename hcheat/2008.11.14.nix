{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hcheat";
          version = "2008.11.14";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/hcheat/";
        url = "";
        synopsis = "A collection of code cheatsheet";
        description = "Starting with Google Analytics";
        buildType = "Simple";
      };
      components = {
        hcheat = {
          depends  = [
            hsPkgs.base
            hsPkgs.mps
          ];
        };
      };
    }