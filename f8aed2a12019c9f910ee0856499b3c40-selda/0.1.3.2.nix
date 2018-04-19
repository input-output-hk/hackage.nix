{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      localcache = true;
      haste = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "selda";
          version = "0.1.3.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "anton@ekblad.cc";
        author = "Anton Ekblad";
        homepage = "https://github.com/valderman/selda";
        url = "";
        synopsis = "Type-safe, high-level EDSL for interacting with relational databases.";
        description = "This package provides an EDSL for writing portable, type-safe, high-level\ndatabase code. Its feature set includes querying and modifying databases,\nautomatic, in-process caching with consistency guarantees, and transaction\nsupport.\nSee the package readme for a brief usage tutorial.\nTo use this package you need at least one backend package, in addition to\nthis package. There are currently two different backend packages:\nselda-sqlite and selda-postgresql.";
        buildType = "Simple";
      };
      components = {
        selda = {
          depends  = ([
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.time
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.transformers) ++ pkgs.lib.optionals (!_flags.haste && _flags.localcache) [
            hsPkgs.hashable
            hsPkgs.psqueues
            hsPkgs.unordered-containers
          ];
        };
      };
    }