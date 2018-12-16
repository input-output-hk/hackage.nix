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
        name = "mirror-tweet";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "masakazu.minamiyama@gmail.com";
      author = "minamiyama1994";
      homepage = "https://github.com/minamiyama1994/mirror-tweet";
      url = "";
      synopsis = "Tweet mirror";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mirror-tweet" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.twitter-conduit)
            (hsPkgs.authenticate-oauth)
            (hsPkgs.monad-logger)
            (hsPkgs.conduit)
            (hsPkgs.lens)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.text)
          ];
        };
      };
    };
  }