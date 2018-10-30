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
      specVersion = "1.8";
      identifier = {
        name = "haskell-bcrypt";
        version = "0.3.2";
      };
      license = "MIT";
      copyright = "Brett Carter 2011";
      maintainer = "brett@rdnzl.net";
      author = "Brett Carter";
      homepage = "http://www.github.com/zbskii/haskell-bcrypt";
      url = "";
      synopsis = "A bcrypt implementation for haskell";
      description = "Wraps around the OpenBSD blowfish implementation to implement bcrypt.\n\nA slightly modified (for build purposes) bcrypt c library is included.\n\nSee <http://www.usenix.org/events/usenix99/provos.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      tests = {
        "test-haskell-bcrypt" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.random)
            (hsPkgs.base)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs)
          ];
        };
      };
    };
  }