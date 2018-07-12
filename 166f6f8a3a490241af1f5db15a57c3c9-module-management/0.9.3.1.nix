{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "module-management";
          version = "0.9.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "David Fox <dsf@seereason.com>";
        author = "David Fox";
        homepage = "http://src.seereason.com/module-management";
        url = "";
        synopsis = "Clean up module imports, split and merge modules";
        description = "Clean up module imports, split and merge modules.";
        buildType = "Simple";
      };
      components = {
        "module-management" = {
          depends  = [
            hsPkgs.applicative-extras
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.Cabal
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.haskell-src-exts
            hsPkgs.HUnit
            hsPkgs.MonadCatchIO-mtl
            hsPkgs.mtl
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.pureMD5
            hsPkgs.set-extra
            hsPkgs.syb
            hsPkgs.system-fileio
            hsPkgs.temporary
          ];
        };
      };
    }