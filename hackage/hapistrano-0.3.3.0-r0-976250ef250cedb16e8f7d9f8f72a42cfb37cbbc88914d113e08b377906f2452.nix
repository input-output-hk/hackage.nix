{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hapistrano";
        version = "0.3.3.0";
      };
      license = "MIT";
      copyright = "2015-2017 Stack Builders Inc.";
      maintainer = "justin@stackbuilders.com";
      author = "Justin Leitgeb";
      homepage = "https://github.com/stackbuilders/hapistrano";
      url = "";
      synopsis = "A deployment library for Haskell applications";
      description = "\nHapistrano makes it easy to reliably deploy Haskell applications\nto a server.\n\nFollowing popular libraries like Ruby's <http://capistranorb.com/\nCapistrano>, Hapistrano does the work of building the application\nwith dependencies into a distinct folder, and then atomically moves\na symlink to the latest complete build.\n\nThis allows for atomic switchovers to new application code after the\nbuild is complete. Rollback is even simpler, since Hapistrano can\njust point the `current` symlink to the previous release.\n\nSee <https://github.com/stackbuilders/hapistrano the project readme on GitHub>\nfor more information.\n";
      buildType = "Simple";
    };
    components = {
      "hapistrano" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.path)
          (hsPkgs.process)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "hap" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.hapistrano)
            (hsPkgs.optparse-applicative)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.stm)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hapistrano)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.process)
            (hsPkgs.temporary)
          ];
        };
      };
    };
  }