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
      specVersion = "1.6";
      identifier = {
        name = "snap-stream";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "";
      url = "";
      synopsis = "Streaming Snap handlers";
      description = "Snap handlers for streaming access with range requests";
      buildType = "Simple";
    };
    components = {
      "snap-stream" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.io-streams)
          (hsPkgs.snap-core)
        ];
      };
    };
  }