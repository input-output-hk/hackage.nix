{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "bounded-queue"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Kadena LLC";
      maintainer = "colin@kadena.io";
      author = "Colin Woodbury";
      homepage = "https://gitlab.com/fosskers/bounded-queue";
      url = "";
      synopsis = "A strict, immutable, thread-safe, single-ended, bounded queue.";
      description = "A strict, immutable, thread-safe, single-ended, bounded queue\nwhich automatically forgets old values instead of blocking.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.deepseq) ];
        };
      tests = {
        "bounded-queue-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bounded-queue)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      };
    }