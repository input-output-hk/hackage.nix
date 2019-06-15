{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-packed-vector"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-packed-vector#readme";
      url = "";
      synopsis = "Packed Vector";
      description = "Packed Vector. Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-prim)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "hw-packed-vector-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-hedgehog)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-prim)
            (hsPkgs.vector)
            (hsPkgs.hw-packed-vector)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }