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
        name = "hw-conduit-merges";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Alexey Raga";
      maintainer = "alexey.raga@gmail.com";
      author = "Alexey Raga";
      homepage = "https://github.com/haskell-works/hw-conduit-merges#readme";
      url = "";
      synopsis = "Additional merges and joins for Conduit";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "hw-conduit-merges" = {
        depends  = [
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.mtl)
          (hsPkgs.base)
        ];
      };
      tests = {
        "hw-conduit-merges-test" = {
          depends  = [
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.mtl)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hw-conduit-merges)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }