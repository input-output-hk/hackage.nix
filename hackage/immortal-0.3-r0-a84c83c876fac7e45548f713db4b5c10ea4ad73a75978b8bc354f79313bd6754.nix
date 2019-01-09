{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "immortal"; version = "0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "roma@ro-che.info";
      author = "Roman Cheplyaka";
      homepage = "https://github.com/feuerbach/immortal";
      url = "";
      synopsis = "Spawn threads that never die (unless told to do so)";
      description = "A small library to create threads that never die.\nThis is useful e.g. for writing servers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.stm) (hsPkgs.unliftio-core) ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.transformers)
            (hsPkgs.immortal)
            (hsPkgs.stm)
            ];
          };
        };
      };
    }