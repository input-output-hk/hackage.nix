{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hspec-golden"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Stack Builders Inc";
      maintainer = "cmotoche@stackbuilders.com";
      author = "Stack Builders";
      homepage = "https://github.com/stackbuilders/hspec-golden#readme";
      url = "";
      synopsis = "Golden tests for hspec";
      description = "Please see the README on GitHub at <https://github.com/stackbuilders/hspec-golden#README>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.directory) (hsPkgs.hspec-core) ];
        };
      exes = {
        "hgold" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.hspec-golden)
            (hsPkgs.simple-get-opt)
            ];
          };
        };
      tests = {
        "hspec-golden-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec-golden)
            (hsPkgs.silently)
            ];
          };
        };
      };
    }