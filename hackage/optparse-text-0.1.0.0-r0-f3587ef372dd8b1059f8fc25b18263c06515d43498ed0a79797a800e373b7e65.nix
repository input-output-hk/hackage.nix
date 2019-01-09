{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "optparse-text"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Pascal Hartig <i@passy.me>";
      author = "";
      homepage = "https://github.com/passy/optparse-text#readme";
      url = "";
      synopsis = "Data.Text helpers for optparse-applicative";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.optparse-applicative) (hsPkgs.text) ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.optparse-text)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }