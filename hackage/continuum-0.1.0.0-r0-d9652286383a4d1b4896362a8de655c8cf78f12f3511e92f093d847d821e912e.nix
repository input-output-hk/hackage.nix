{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { binaries = false; profiling = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "continuum"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "alexp@coffeenco.de";
      author = "Alex Petrov";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Continuum Database Client";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.nanomsg-haskell)
          (hsPkgs.time)
          (hsPkgs.mtl)
          ];
        };
      exes = {
        "continuum-server" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.foldl)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.time)
            (hsPkgs.timers)
            (hsPkgs.stm)
            (hsPkgs.suspend)
            (hsPkgs.leveldb-haskell-fork)
            (hsPkgs.resourcet)
            (hsPkgs.bytestring)
            (hsPkgs.parallel-io)
            (hsPkgs.cereal)
            (hsPkgs.data-default)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.nanomsg-haskell)
            ];
          libs = [ (pkgs."hyperleveldb") ];
          };
        };
      };
    }