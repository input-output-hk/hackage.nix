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
      specVersion = "1.6";
      identifier = {
        name = "system-posix-redirect";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Galois Inc.";
      maintainer = "ezyang@galois.com";
      author = "Galois Inc.";
      homepage = "";
      url = "";
      synopsis = "A toy module that allows you to temporarily redirect\na program's stdout.";
      description = "Due to the design of POSIX, it is possible to\ntemporarily overload the file descriptors\ncorresponding to stdout and stderr to point to an\narbitrary pipe.  It is, however, tricky to get\nright.  This module gets it right, as far as such\na terrible hack can be made right.  It can be used\nto make misbehaving third-party C libraries stop\nspewing to standard output. Warning: the module\nauthor has concluded that due to lack of\nportability, this module should not be used in any\nserious sytem.  But, for those who like living\ndangerously...";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
        ];
      };
    };
  }