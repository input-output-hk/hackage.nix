{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lockpool"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Layer 3 Communications, Andrew Martin";
      maintainer = "chessai1996@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/chessai/lockpool.git";
      url = "";
      synopsis = "set a maximum on the number of concurrent actions";
      description = "with a 'LockPool', you can specify the\nmaximum number of threads that are running\nconcurrently.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.clock) (hsPkgs.stm) ]; };
      };
    }