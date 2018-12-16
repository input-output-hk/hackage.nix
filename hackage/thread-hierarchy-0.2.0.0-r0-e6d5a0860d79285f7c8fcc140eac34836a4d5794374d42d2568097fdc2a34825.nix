{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "thread-hierarchy";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2017 Naoto Shimazaki";
      maintainer = "Naoto.Shimazaki@gmail.com";
      author = "Naoto Shimazaki";
      homepage = "https://github.com/nshimaza/thread-hierarchy#readme";
      url = "";
      synopsis = "Simple Haskel thread management in hierarchical manner";
      description = "This package provides parent-child association and guaranteed clean-up of children\nover plain Haskell thread.  You can terminate all child threads and grand child threads by\njust killing their parent thread.\nasynchronous exception.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.stm)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "thread-hierarchy-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.stm)
            (hsPkgs.thread-hierarchy)
          ];
        };
      };
    };
  }