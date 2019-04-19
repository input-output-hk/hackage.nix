{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "rattle"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2019";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/rattle#readme";
      url = "";
      synopsis = "Forward build system, with caching and speculation";
      description = "A forward build system like Fabrciate but with speculation and remote caching.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cryptohash-sha256)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.shake)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "rattle-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.extra)
            (hsPkgs.filepattern)
            (hsPkgs.rattle)
            (hsPkgs.shake)
            ];
          };
        };
      };
    }