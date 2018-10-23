{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      localcache = true;
      haste = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "selda";
        version = "0.1.10.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "https://selda.link";
      url = "";
      synopsis = "Type-safe, high-level EDSL for interacting with relational databases.";
      description = "This package provides an EDSL for writing portable, type-safe, high-level\ndatabase code. Its feature set includes querying and modifying databases,\nautomatic, in-process caching with consistency guarantees, and transaction\nsupport.\nSee the package readme for a brief usage tutorial.\nTo use this package you need at least one backend package, in addition to\nthis package. There are currently two different backend packages:\nselda-sqlite and selda-postgresql.";
      buildType = "Simple";
    };
    components = {
      "selda" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.11") (hsPkgs.transformers)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "8.2") (hsPkgs.hashable)) ++ pkgs.lib.optional (!flags.haste && flags.localcache) (hsPkgs.psqueues);
      };
    };
  }