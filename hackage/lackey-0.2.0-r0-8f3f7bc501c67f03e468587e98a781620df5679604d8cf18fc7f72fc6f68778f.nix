{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lackey"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "https://github.com/tfausak/lackey#readme";
      url = "";
      synopsis = "Generate Ruby consumers of Servant APIs.";
      description = "Lackey generates Ruby consumers of Servant APIs.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.servant) ]; };
      tests = {
        "lackey-test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lackey)
            (hsPkgs.servant)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            ];
          };
        };
      };
    }