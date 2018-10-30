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
        name = "atndapi";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Yutaka Nishimura";
      maintainer = "ytk.nishimura@gmail.com";
      author = "Yutaka Nishimura";
      homepage = "http://github.com/ynishi/atndapi#readme";
      url = "";
      synopsis = "An interface of ATND API";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.aeson)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.parsec)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers)
          (hsPkgs.data-default)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.resourcet)
          (hsPkgs.time)
        ];
      };
      tests = {
        "atndapi-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.atndapi)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.aeson)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.parsec)
            (hsPkgs.lifted-base)
            (hsPkgs.transformers)
            (hsPkgs.data-default)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.resourcet)
            (hsPkgs.time)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }