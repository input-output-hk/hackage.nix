{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "eprocess";
          version = "1.6.0";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Fernando \"Brujo\" Benavides";
        maintainer = "corentin.dupont@gmail.com";
        author = "Fernando \"Brujo\" Benavides";
        homepage = "";
        url = "";
        synopsis = "*Very* basic Erlang-like process support for Haskell";
        description = "This library provides a *very* basic support for processes with message queues.  It was built using channels, threads and MVars. Since version 1.1.0 you can also kill a running process.";
        buildType = "Simple";
      };
      components = {
        "eprocess" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.exceptions
          ];
        };
      };
    }