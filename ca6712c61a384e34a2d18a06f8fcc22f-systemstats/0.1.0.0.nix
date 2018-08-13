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
      specVersion = "1.10";
      identifier = {
        name = "systemstats";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Savanni D'Gerinel";
      maintainer = "savanni@savannidgerinel.com";
      author = "Savanni D'Gerinel";
      homepage = "https://github.com/githubuser/systemlog#readme";
      url = "";
      synopsis = "An application that regularly logs system stats for later analysis";
      description = "An application that regularly logs system stats for later analysis";
      buildType = "Simple";
    };
    components = {
      exes = {
        "systemstats" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.micrologger)
            (hsPkgs.optparse-applicative)
            (hsPkgs.statgrab)
            (hsPkgs.text)
            (hsPkgs.text-format)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }