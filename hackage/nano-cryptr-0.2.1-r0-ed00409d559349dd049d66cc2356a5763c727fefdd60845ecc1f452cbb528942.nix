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
        name = "nano-cryptr";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Carl Howells, 2010";
      maintainer = "engineering@janrain.com, chowells79@gmail.com";
      author = "Carl Howells";
      homepage = "https://github.com/janrain/nano-cryptr";
      url = "";
      synopsis = "A threadsafe binding to glibc's crypt_r function";
      description = "This package wraps @glibc@'s @crypt_r@ function in a thread-safe manner.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs."crypt") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.nano-cryptr)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }