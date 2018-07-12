{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "preprocessor";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2016 Carlo Nucera";
        maintainer = "meditans@gmail.com";
        author = "Carlo Nucera";
        homepage = "http://github.com/meditans/preprocessor#readme";
        url = "";
        synopsis = "Remove cpp annotations to get the source ready for static analysis.";
        description = "Remove cpp annotations using the configuration with which you build the package, to get the source ready for static analysis with a parsing library like haskell-src-exts.";
        buildType = "Simple";
      };
      components = {
        "preprocessor" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.directory
            hsPkgs.extra
            hsPkgs.filemanip
            hsPkgs.filepath
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.microlens
            hsPkgs.process
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "8.0") hsPkgs.template-haskell;
        };
        tests = {
          "preprocessor-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.haskell-src-exts
              hsPkgs.hspec
              hsPkgs.preprocessor
              hsPkgs.process
              hsPkgs.temporary
            ];
          };
        };
      };
    }