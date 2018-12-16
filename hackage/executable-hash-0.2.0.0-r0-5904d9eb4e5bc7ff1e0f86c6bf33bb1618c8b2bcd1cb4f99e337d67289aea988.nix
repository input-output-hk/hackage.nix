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
        name = "executable-hash";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "2015 FP Complete";
      maintainer = "FP Complete <sloan@fpcomplete.com>";
      author = "Michael Sloan";
      homepage = "http://github.com/fpco/executable-hash";
      url = "";
      synopsis = "Provides the SHA1 hash of the program executable";
      description = "See README.md";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.directory)
          (hsPkgs.executable-path)
          (hsPkgs.file-embed)
          (hsPkgs.template-haskell)
        ];
      };
      exes = {
        "inject-executable-hash" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.executable-hash)
          ];
        };
      };
      tests = {
        "test-compute" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.executable-hash)
          ];
        };
        "test-inject" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.executable-hash)
          ];
        };
        "test-no-inject" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.executable-hash)
          ];
        };
      };
    };
  }