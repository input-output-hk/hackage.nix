{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "oeis2"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Taisuke Hikawa";
      maintainer = "a23b23c23d23e@gmail.com";
      author = "Taisuke Hikawa";
      homepage = "https://github.com/23prime/oeis2#readme";
      url = "";
      synopsis = "Interface for Online Encyclopedia of Integer Sequences (OEIS).";
      description = "Release notes are here https://github.com/23prime/oeis2/releases";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.http-conduit)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.text)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "oeis2-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.http-conduit)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.oeis2)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }