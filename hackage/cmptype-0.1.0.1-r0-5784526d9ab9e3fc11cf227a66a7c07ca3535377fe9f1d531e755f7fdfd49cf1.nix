{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "cmptype"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/type-sets#readme";
      url = "";
      synopsis = "Compare types of any kinds";
      description = "Please see the README on GitHub at <https://github.com/isovector/type-sets/tree/master/cmptype#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.ghc) (hsPkgs.magic-tyfams) ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmptype)
            (hsPkgs.ghc)
            (hsPkgs.magic-tyfams)
            (hsPkgs.should-not-typecheck)
            ];
          };
        };
      };
    }