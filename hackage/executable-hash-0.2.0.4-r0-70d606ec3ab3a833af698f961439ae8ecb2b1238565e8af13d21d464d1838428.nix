{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "executable-hash"; version = "0.2.0.4"; };
      license = "MIT";
      copyright = "2015 FP Complete";
      maintainer = "FP Complete <sloan@fpcomplete.com>";
      author = "Michael Sloan";
      homepage = "http://github.com/fpco/executable-hash";
      url = "";
      synopsis = "Provides the SHA1 hash of the program executable";
      description = "See README.md";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cryptohash or (pkgs.buildPackages.cryptohash))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        (hsPkgs.buildPackages.file-embed or (pkgs.buildPackages.file-embed))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        (hsPkgs.buildPackages.template-haskell or (pkgs.buildPackages.template-haskell))
        ];
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
          depends = [ (hsPkgs.base) (hsPkgs.executable-hash) ];
          };
        };
      tests = {
        "test-compute" = {
          depends = [ (hsPkgs.base) (hsPkgs.executable-hash) ];
          };
        "test-inject" = {
          depends = [ (hsPkgs.base) (hsPkgs.executable-hash) ];
          };
        "test-no-inject" = {
          depends = [ (hsPkgs.base) (hsPkgs.executable-hash) ];
          };
        };
      };
    }