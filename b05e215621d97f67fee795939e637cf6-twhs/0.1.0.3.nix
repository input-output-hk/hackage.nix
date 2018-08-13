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
        name = "twhs";
        version = "0.1.0.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "shinichiro.su@gmail.com";
      author = "SUZUKI Shinichiro";
      homepage = "https://github.com/suzuki-shin/twhs";
      url = "";
      synopsis = "CLI twitter client.";
      description = "See <https://github.com/suzuki-shin/twhs/blob/master/README.md>";
      buildType = "Simple";
    };
    components = {
      "twhs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.twitter-conduit)
          (hsPkgs.authenticate-oauth)
          (hsPkgs.transformers)
          (hsPkgs.resourcet)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.data-default)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.conduit)
          (hsPkgs.http-conduit)
          (hsPkgs.lens)
          (hsPkgs.transformers-base)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.network)
          (hsPkgs.ansi-terminal)
        ];
      };
      exes = {
        "twhs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.twitter-conduit)
            (hsPkgs.authenticate-oauth)
            (hsPkgs.transformers)
            (hsPkgs.resourcet)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.data-default)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.conduit)
            (hsPkgs.http-conduit)
            (hsPkgs.lens)
            (hsPkgs.transformers-base)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.network)
            (hsPkgs.ansi-terminal)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.twhs)
          ];
        };
      };
    };
  }