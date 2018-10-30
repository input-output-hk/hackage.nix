{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      llvm-fast = false;
      library = false;
      development = false;
      parallel-gc = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tweet-hs";
        version = "1.0.1.6";
      };
      license = "BSD-3-Clause";
      copyright = "2016, 2017 Vanessa McHale";
      maintainer = "vanessa.mchale@reconfigure.io";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/command-line-tweeter#readme";
      url = "";
      synopsis = "Command-line tool for twitter";
      description = "a Command Line Interface Tweeter";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.authenticate-oauth)
          (hsPkgs.megaparsec)
          (hsPkgs.bytestring)
          (hsPkgs.split)
          (hsPkgs.optparse-applicative)
          (hsPkgs.lens)
          (hsPkgs.unordered-containers)
          (hsPkgs.htoml)
          (hsPkgs.data-default)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.directory)
          (hsPkgs.composition-prelude)
          (hsPkgs.extra)
          (hsPkgs.aeson)
        ];
      };
      exes = {
        "tweet" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tweet-hs)
          ];
        };
      };
      tests = {
        "tweeths-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tweet-hs)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
          ];
        };
      };
      benchmarks = {
        "tweeths-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.tweet-hs)
            (hsPkgs.bytestring)
            (hsPkgs.megaparsec)
          ];
        };
      };
    };
  }