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
        name = "cryptocompare";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "2017 Avi Press";
      maintainer = "avipress@gmail.com";
      author = "Avi Press";
      homepage = "https://github.com/aviaviavi/cryptocompare";
      url = "";
      synopsis = "Haskell wrapper for the cryptocompare API";
      description = "# CryptoCompare\n[![Build Status](https://travis-ci.org/aviaviavi/cryptocompare.svg?branch=master)](https://travis-ci.org/aviaviavi/cryptocompare)\nA Haskell wrapper to the public [CryptoCompare API](https://www.cryptocompare.com/api/), a\nsource of information and pricing of different crypto currencies\n## State\nThis library is usable but not complete. It currently covers a subset of the API.\nBreaking changes will occur if necessary but will be avoided if possible.\n## Contributing\nContributions in any form are always welcome.";
      buildType = "Simple";
    };
    components = {
      "cryptocompare" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.text)
          (hsPkgs.MissingH)
          (hsPkgs.time)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.http-conduit)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.exceptions)
        ];
      };
      exes = {
        "cryptocompare-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cryptocompare)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.MissingH)
            (hsPkgs.time)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.http-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.exceptions)
          ];
        };
      };
      tests = {
        "cryptocompare-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cryptocompare)
          ];
        };
      };
    };
  }