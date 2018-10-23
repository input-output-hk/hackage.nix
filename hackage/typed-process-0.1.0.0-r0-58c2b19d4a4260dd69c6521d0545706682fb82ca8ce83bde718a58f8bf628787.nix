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
        name = "typed-process";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/typed-process#readme";
      url = "";
      synopsis = "Run external processes, with strong typing of streams";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "typed-process" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.exceptions)
          (hsPkgs.process)
          (hsPkgs.stm)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "typed-process-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.hspec)
            (hsPkgs.http-conduit)
            (hsPkgs.temporary)
            (hsPkgs.typed-process)
          ];
        };
      };
    };
  }