{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "markov-processes"; version = "0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Vikram Verma <me@vikramverma.com>";
      author = "Leopold Tal G <leopold.tal.dg@gmail.com>, Yorick van Pelt <yorickvanpelt@gmail.com>, Vikram Verma <me@vikramverma.com>";
      homepage = "";
      url = "";
      synopsis = "Hidden Markov processes.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.memoize)
          (hsPkgs.MonadRandom)
          (hsPkgs.random)
          ];
        };
      tests = {
        "markov-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.assertions)
            (hsPkgs.markov-processes)
            (hsPkgs.memoize)
            (hsPkgs.random)
            ];
          };
        };
      };
    }