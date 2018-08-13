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
        name = "async-io-either";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Sean Chalmers";
      maintainer = "sclhiannan@gmail.com";
      author = "Sean Chalmers";
      homepage = "https://github.com/mankyKitty/async-io-either#readme";
      url = "";
      synopsis = "Could be useful";
      description = "A way of running any IO type and capturing any exception, maybe, I think...";
      buildType = "Simple";
    };
    components = {
      "async-io-either" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.transformers)
        ];
      };
    };
  }