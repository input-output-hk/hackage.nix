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
        version = "1.0.1.43";
      };
      license = "BSD-3-Clause";
      copyright = "2016-2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/command-line-tweeter#readme";
      url = "";
      synopsis = "Command-line tool for twitter";
      description = "a Command Line Interface Tweeter";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.authenticate-oauth)
          (hsPkgs.megaparsec)
          (hsPkgs.bytestring)
          (hsPkgs.split)
          (hsPkgs.microlens)
          (hsPkgs.unordered-containers)
          (hsPkgs.htoml-megaparsec)
          (hsPkgs.data-default)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.composition-prelude)
          (hsPkgs.extra)
          (hsPkgs.aeson)
        ];
      };
      exes = {
        "tweet" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tweet-hs)
            (hsPkgs.optparse-applicative)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
          ];
        };
      };
      tests = {
        "tweeths-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tweet-hs)
            (hsPkgs.hspec)
          ];
        };
      };
      benchmarks = {
        "tweeths-bench" = {
          depends = [
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