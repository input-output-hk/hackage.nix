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
        name = "ghc-events";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Donnie Jones <donnie@darthik.com>,\nSimon Marlow <marlowsd@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Library and tool for parsing .eventlog files from GHC";
      description = "Parses .eventlog files emitted by GHC 6.12.1 and later.\nIncludes the show-ghc-events tool to dump an event\nlog file as text.";
      buildType = "Simple";
    };
    components = {
      "ghc-events" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "show-ghc-events" = {};
      };
    };
  }