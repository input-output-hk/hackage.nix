{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "broadcast-chan-conduit"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2018 Merijn Verstraaten";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten";
      homepage = "https://github.com/merijn/broadcast-chan";
      url = "";
      synopsis = "Conduit-based parallel streaming code for broadcast-chan";
      description = "__WARNING:__ While the code in this library should be fairly stable and\nproduction, the API is something I'm still working on. API changes will\nfollow the PVP, but __expect__ breaking API changes in future versions!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.broadcast-chan)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.unliftio-core)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs.void);
        };
      tests = {
        "conduit" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.broadcast-chan-conduit)
            (hsPkgs.broadcast-chan-tests)
            (hsPkgs.containers)
            (hsPkgs.conduit)
            ];
          };
        };
      };
    }