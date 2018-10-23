{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { generate = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "cabal-nirvana";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/cabal-nirvana";
      url = "";
      synopsis = "Avoid Cabal dependency hell by constraining to known good versions.";
      description = "This tool takes a list of known compatible versions of libraries and forces them to be used, via constraints in your cabal config file. This should bypass a lot of cabal dependency hell, thereby inducing nirvana.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal-nirvana" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HTTP)
            (hsPkgs.process)
            (hsPkgs.directory)
          ];
        };
        "cabal-nirvana-generate" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.packdeps)
          ];
        };
      };
    };
  }