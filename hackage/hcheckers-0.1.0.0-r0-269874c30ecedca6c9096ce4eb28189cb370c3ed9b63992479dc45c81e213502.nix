{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { verbose = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "hcheckers"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ilya V. Portnov";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya V. Portnov";
      homepage = "https://github.com/portnov/hcheckers#readme";
      url = "";
      synopsis = "Implementation of checkers (\"draughts\") board game - server application";
      description = "Please see the README on GitHub at <https://github.com/githubuser/hcheckers#readme>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hcheckersd" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bits)
            (hsPkgs.bytes)
            (hsPkgs.bytestring)
            (hsPkgs.clock)
            (hsPkgs.concurrent-extra)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.ekg)
            (hsPkgs.ekg-core)
            (hsPkgs.exceptions)
            (hsPkgs.fast-logger)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.hashtables)
            (hsPkgs.heavy-logger)
            (hsPkgs.hsyslog)
            (hsPkgs.http-types)
            (hsPkgs.megaparsec)
            (hsPkgs.microlens)
            (hsPkgs.monad-metrics)
            (hsPkgs.mtl)
            (hsPkgs.mwc-random)
            (hsPkgs.optparse-applicative)
            (hsPkgs.psqueues)
            (hsPkgs.random)
            (hsPkgs.random-access-file)
            (hsPkgs.scotty)
            (hsPkgs.stm)
            (hsPkgs.stm-containers)
            (hsPkgs.store)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.text-format-heavy)
            (hsPkgs.unix)
            (hsPkgs.unix-bytestring)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
            ];
          };
        };
      };
    }