{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "valor"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Luka Hadžiegrić";
      maintainer = "reygoch@gmail.com";
      author = "Luka Hadžiegrić";
      homepage = "https://github.com/reygoch/valor#readme";
      url = "";
      synopsis = "Simple general structured validation library";
      description = "Please see the README on GitHub at <https://github.com/reygoch/valor#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.transformers) ]; };
      tests = {
        "valor-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.valor)
            ];
          };
        };
      };
    }