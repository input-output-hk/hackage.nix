{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "transient";
        version = "0.4.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto G. Corona";
      homepage = "http://www.fpcomplete.com/user/agocorona";
      url = "";
      synopsis = "Making composable programs with multithreading, events and distributed computing";
      description = "see <http://github.com/agocorona/transient>\nIn this release, distributed primitives have been moved to the transient-universe package\nWeb primitives have been moved to the package ghcjs-hplay";
      buildType = "Simple";
    };
    components = {
      "transient" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.stm)
          (hsPkgs.time)
        ];
      };
      tests = {
        "test-transient" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.stm)
            (hsPkgs.HTTP)
            (hsPkgs.network)
            (hsPkgs.transformers)
            (hsPkgs.process)
          ];
        };
      };
    };
  }