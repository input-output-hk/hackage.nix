{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "nano-cryptr";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Carl Howells, 2010";
      maintainer = "chowells79@gmail.com";
      author = "Carl Howells";
      homepage = "http://github.com/chowells79/nano-cryptr";
      url = "";
      synopsis = "A threadsafe binding to glibc's crypt_r function";
      description = "This package wraps @glibc@'s @crypt_r@ function in a thread-safe manner.";
      buildType = "Simple";
    };
    components = {
      "nano-cryptr" = {
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
          ];
        };
      };
    };
  }