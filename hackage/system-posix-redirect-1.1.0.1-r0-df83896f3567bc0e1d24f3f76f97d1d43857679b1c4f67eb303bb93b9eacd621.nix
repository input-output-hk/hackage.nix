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
        version = "1.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Galois Inc, 2013 Liyang HU";
      maintainer = "system-posix-redirect@liyang.hu";
      author = "Galois Inc., Liyang HU";
      homepage = "";
      url = "";
      synopsis = "A toy module to temporarily redirect a program's stdout.";
      description = "Due to the design of POSIX, it is possible to temporarily overload the\nfile descriptors corresponding to stdout and stderr to point to an\narbitrary pipe. It is, however, tricky to get right. This module gets\nit right, as far as such a terrible hack can be made right. It can be\nused to make misbehaving third-party C libraries stop spewing to\nstandard output. Warning: the module author has concluded that due to\nlack of portability, this module should not be used in any serious\nsytem. But, for those who like living dangerously...";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.unix)
        ];
      };
    };
  }