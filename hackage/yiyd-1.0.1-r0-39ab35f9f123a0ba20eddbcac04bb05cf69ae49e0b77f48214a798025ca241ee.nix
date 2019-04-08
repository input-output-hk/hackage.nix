{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "yiyd"; version = "1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "2019 Vonfry";
      maintainer = "mail@vonfry.name";
      author = "Vonfry";
      homepage = "https://gitlab.com/Vonfry/yiyd";
      url = "";
      synopsis = "";
      description = "This project's whole name is __Zhou Yi Yarrow divination__. Its a Chinese traditional divination with _zhouyi_. So I'll write other document with Chinese instead of other language. I think it's so hard to describe them without chinese.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "yiyd" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.yaml)
            (hsPkgs.optparse-applicative)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.random)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.yaml)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.random)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        };
      };
    }