{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "compact";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Edward Z. Yang, Ben Gamari";
      maintainer = "ezyang@mit.edu, ben@smart-cactus.org";
      author = "Edward Z. Yang, Ben Gamari";
      homepage = "https://github.com/ezyang/compact";
      url = "";
      synopsis = "Non-GC'd, contiguous storage for immutable data structures";
      description = "This package provides user-facing APIs for working with\n\"compact regions\", which hold a fully evaluated Haskell object graph.\nThese regions maintain the invariant that no pointers live inside the struct\nthat point outside it, which ensures efficient garbage collection without\never reading the structure contents (effectively, it works as a manually\nmanaged \"oldest generation\" which is never freed until the whole is\nreleased).\nThis package is currently highly experimental, but we hope it may\nbe useful to some people.  It is GHC 8.2 only.  The bare-bones library\nthat ships with GHC is ghc-compact.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-compact)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "compact-test" = {
          depends  = [
            (hsPkgs.compact)
            (hsPkgs.base)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }