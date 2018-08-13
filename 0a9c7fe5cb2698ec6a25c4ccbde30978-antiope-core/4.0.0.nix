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
        name = "antiope-core";
        version = "4.0.0";
      };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/arbor/antiope#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/arbor/antiope#readme>";
      buildType = "Simple";
    };
    components = {
      "antiope-core" = {
        depends  = [
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.generic-lens)
          (hsPkgs.http-client)
          (hsPkgs.lens)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.unliftio-core)
        ];
      };
      tests = {
        "antiope-core-test" = {
          depends  = [
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-core)
            (hsPkgs.antiope-core)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.generic-lens)
            (hsPkgs.http-client)
            (hsPkgs.lens)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.unliftio-core)
          ];
        };
      };
    };
  }