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
      specVersion = "1.8";
      identifier = {
        name = "testloop";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "romanandreg@gmail.com";
      author = "Roman Gonzalez";
      homepage = "http://github.com/roman/testloop";
      url = "";
      synopsis = "Quick feedback loop for test suites";
      description = "TestLoop provides an automated execution and code reloading of\nyour project's test-suites whenever a haskell source file is\nmodified.\nTo get started check out http://github.com/roman/testloop";
      buildType = "Simple";
    };
    components = {
      "testloop" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.fsnotify)
          (hsPkgs.hint)
          (hsPkgs.mtl)
          (hsPkgs.system-filepath)
          (hsPkgs.time)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }