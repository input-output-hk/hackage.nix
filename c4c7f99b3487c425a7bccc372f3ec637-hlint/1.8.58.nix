{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      threaded = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hlint";
          version = "1.8.58";
        };
        license = "BSD-3-Clause";
        copyright = "Neil Mitchell 2006-2014";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "http://community.haskell.org/~ndm/hlint/";
        url = "";
        synopsis = "Source code suggestions";
        description = "HLint gives suggestions on how to improve your source code.";
        buildType = "Simple";
      };
      components = {
        hlint = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.hscolour
            hsPkgs.cpphs
            hsPkgs.cmdargs
            hsPkgs.haskell-src-exts
            hsPkgs.uniplate
          ];
        };
        exes = {
          hlint = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }