{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gitcache";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "https://github.com/vincenthz/hs-gitcache";
      url = "";
      synopsis = "Simple git utility to use and manage clone cache";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gitcache" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.utf8-string)
            (hsPkgs.cryptohash)
          ];
        };
      };
    };
  }