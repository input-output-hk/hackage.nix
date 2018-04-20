{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "lambdaFeed";
          version = "0.3.1";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) 2006 Manuel M T Chakravarty";
        maintainer = "chak@cse.unsw.edu.au";
        author = "Manuel M T Chakravarty";
        homepage = "http://www.cse.unsw.edu.au/~chak/haskell/lambdaFeed/";
        url = "";
        synopsis = "RSS 2.0 feed generator";
        description = "LambdaFeed generates RSS 2.0 XML feeds and matching HTML files.";
        buildType = "Custom";
      };
      components = {
        exes = {
          lambdaFeed = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.html
            ];
          };
        };
      };
    }