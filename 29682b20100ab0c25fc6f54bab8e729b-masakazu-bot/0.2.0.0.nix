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
      specVersion = "1.20";
      identifier = {
        name = "masakazu-bot";
        version = "0.2.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "masakazu.minamiyama@gmail.com";
      author = "minamiyama1994";
      homepage = "https://github.com/minamiyama1994/chomado-bot-on-haskell/tree/minamiyama1994";
      url = "";
      synopsis = "@minamiyama1994_bot on haskell";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "masakazu-bot" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.twitter-conduit)
            (hsPkgs.transformers)
            (hsPkgs.monad-logger)
            (hsPkgs.authenticate-oauth)
            (hsPkgs.twitter-types)
            (hsPkgs.datetime)
            (hsPkgs.conduit)
            (hsPkgs.text)
            (hsPkgs.regex-posix)
            (hsPkgs.lens)
            (hsPkgs.bytestring)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.persistent-template)
            (hsPkgs.persistent)
          ];
        };
      };
    };
  }