{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hlint";
          version = "1.0.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "Neil Mitchell 2006-2008";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "http://www.cs.york.ac.uk/~ndm/hlint/";
        url = "";
        synopsis = "Source code suggestions";
        description = "HLint gives suggestions on how to improve your source code.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hlint = {
            depends  = [
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.haskell-src-exts
              hsPkgs.uniplate
              hsPkgs.mtl
              hsPkgs.containers
            ];
          };
        };
      };
    }