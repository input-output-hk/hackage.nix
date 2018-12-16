{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { llvm-fast = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tweet-hs";
        version = "0.5.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Vanessa McHale";
      maintainer = "tmchale@wisc.edu";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/command-line-tweeter#readme";
      url = "";
      synopsis = "Post tweets from stdin";
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
          (hsPkgs.bytestring)
          (hsPkgs.split)
          (hsPkgs.optparse-applicative)
          (hsPkgs.lens)
          (hsPkgs.data-default)
          (hsPkgs.text)
          (hsPkgs.megaparsec)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.MissingH)
          (hsPkgs.directory)
          (hsPkgs.extra)
        ];
      };
      exes = {
        "tweet" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tweet-hs)
          ];
        };
      };
    };
  }