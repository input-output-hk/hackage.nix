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
        name = "broadcast-chan-pipes";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2018 Merijn Verstraaten";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten";
      homepage = "https://github.com/merijn/broadcast-chan";
      url = "";
      synopsis = "Pipes-based parallel streaming code for broadcast-chan";
      description = "__WARNING:__ While the code in this library should be fairly stable and\nproduction, the API is something I'm still working on. API changes will\nfollow the PVP, but __expect__ breaking API changes in future versions!";
      buildType = "Simple";
    };
    components = {
      "broadcast-chan-pipes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.broadcast-chan)
          (hsPkgs.pipes)
          (hsPkgs.pipes-safe)
        ];
      };
      tests = {
        "pipes" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.broadcast-chan-pipes)
            (hsPkgs.broadcast-chan-tests)
            (hsPkgs.containers)
            (hsPkgs.foldl)
            (hsPkgs.pipes)
            (hsPkgs.pipes-safe)
          ];
        };
      };
    };
  }