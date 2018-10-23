{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { build-tests = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "module-management";
        version = "0.11.1";
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
          (hsPkgs.applicative-extras)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.HUnit)
          (hsPkgs.MonadCatchIO-mtl)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.pureMD5)
          (hsPkgs.set-extra)
          (hsPkgs.syb)
          (hsPkgs.system-fileio)
          (hsPkgs.temporary)
        ];
      };
      exes = {
        "hmm" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.HUnit)
            (hsPkgs.module-management)
            (hsPkgs.MonadCatchIO-mtl)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.set-extra)
            (hsPkgs.syb)
            (hsPkgs.temporary)
          ];
        };
        "tests" = {
          depends  = pkgs.lib.optionals (flags.build-tests) [
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.debian)
            (hsPkgs.directory)
            (hsPkgs.Extra)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.module-management)
            (hsPkgs.MonadCatchIO-mtl)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.process-progress)
            (hsPkgs.pureMD5)
            (hsPkgs.regex-compat)
            (hsPkgs.set-extra)
            (hsPkgs.syb)
            (hsPkgs.system-fileio)
            (hsPkgs.temporary)
          ];
        };
      };
    };
  }