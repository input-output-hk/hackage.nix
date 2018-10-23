{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "ghc-events";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Donnie Jones <donnie@darthik.com>,\nSimon Marlow <marlowsd@gmail.com>,\nPaul Bone <pbone@csse.unimelb.edu.au>,\nDuncan Coutts <duncan@well-typed.com>";
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
          (hsPkgs.array)
        ];
      };
      exes = {
        "ghc-events-show" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.array)
          ];
        };
        "ghc-events-merge" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.array)
          ];
        };
      };
      tests = {
        "test-versions" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.array)
          ];
        };
      };
    };
  }