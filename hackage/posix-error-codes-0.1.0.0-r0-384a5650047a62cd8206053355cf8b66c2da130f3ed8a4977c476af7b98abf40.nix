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
        name = "posix-error-codes";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "© 2016 Yghor Kerscher";
      maintainer = "kerscher@acm.org";
      author = "Yghor Kerscher";
      homepage = "http://github.com/kerscher/posix-error-codes";
      url = "";
      synopsis = "POSIX error codes";
      description = "A more readable version of ERRNO codes for POSIX-compatible programs.";
      buildType = "Simple";
    };
    components = {
      "posix-error-codes" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }