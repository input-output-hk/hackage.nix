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
        name = "typed-process";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://haskell-lang.org/library/typed-process";
      url = "";
      synopsis = "Run external processes, with strong typing of streams";
      description = "Please see the tutorial at <https://haskell-lang.org/library/typed-process>";
      buildType = "Simple";
    };
    components = {
      "typed-process" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.process)
          (hsPkgs.stm)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "typed-process-test" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.process)
            (hsPkgs.stm)
            (hsPkgs.temporary)
            (hsPkgs.transformers)
            (hsPkgs.typed-process)
          ];
        };
      };
    };
  }