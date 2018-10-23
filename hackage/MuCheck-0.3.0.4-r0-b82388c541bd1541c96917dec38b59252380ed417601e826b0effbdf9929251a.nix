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
        name = "MuCheck";
        version = "0.3.0.4";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "rahul@gopinath.org";
      author = "Duc Lee <ledu@onid.oregonstate.edu>,\nRahul Gopinath <rahul@gopinath.org>";
      homepage = "https://bitbucket.com/osu-testing/mucheck";
      url = "";
      synopsis = "Automated Mutation Testing";
      description = "This package defines a mutation analysis library for haskell\nprograms. It does this by parsing the haskell source, and\nreplacing a few of the common haskell functions and operators\nwith other, but similar operators and functions, and running\nthe testsuite to check whether the difference has been\ndetected.";
      buildType = "Simple";
    };
    components = {
      "MuCheck" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.syb)
          (hsPkgs.time)
          (hsPkgs.hint)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.directory)
          (hsPkgs.temporary)
          (hsPkgs.hashable)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.syb)
            (hsPkgs.time)
            (hsPkgs.hint)
            (hsPkgs.mtl)
            (hsPkgs.hspec)
            (hsPkgs.MuCheck)
            (hsPkgs.random)
            (hsPkgs.directory)
            (hsPkgs.temporary)
            (hsPkgs.hashable)
          ];
        };
      };
    };
  }