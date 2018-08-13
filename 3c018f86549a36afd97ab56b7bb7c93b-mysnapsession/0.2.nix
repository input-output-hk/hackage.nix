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
        name = "mysnapsession";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Smith <cdsmith@gmail.com>";
      author = "Chris Smith <cdsmith@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Memory-backed sessions and continuations for Snap web apps";
      description = "This package provides two Snap extensions.  The first is\nan in-memory session manager, which stores sessions for\neach client.  The session object type is user-defined.\nBecause sessions are memory-backed, sticky session routing\nis needed to use this extension with load balancing.\n\nThe second extension provides a continuation-based\nprogramming model called dialogues, which allow natural\nspecification of stateful interactions with the client\nthat span multiple requests.";
      buildType = "Simple";
    };
    components = {
      "mysnapsession" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.regex-posix)
          (hsPkgs.clientsession)
          (hsPkgs.cereal)
        ];
      };
    };
  }