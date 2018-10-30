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
        name = "posix-acl";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "© 2013-2014 Nicola Squartini";
      maintainer = "Nicola Squartini <tensor5@gmail.com>";
      author = "Nicola Squartini";
      homepage = "https://github.com/tensor5/posix-acl";
      url = "";
      synopsis = "Support for Posix ACL";
      description = "Support for POSIX.1e /Access Control Lists/ (ACL), defined in\nsection 23 of the draft standard <http://users.suse.com/~agruen/acl/posix/Posix_1003.1e-990310.pdf IEEE Std 1003.1e>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unix)
        ];
        libs = [ (pkgs."acl") ];
      };
    };
  }