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
        name = "standalone-haddock";
        version = "1.1.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "roma@ro-che.info";
      author = "Roman Cheplyaka";
      homepage = "http://feuerbach.github.io/standalone-haddock";
      url = "";
      synopsis = "Generate standalone haddock documentation for a set of packages";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "standalone-haddock" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }