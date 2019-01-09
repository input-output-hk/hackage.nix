{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fee-estimate"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 sahabi";
      maintainer = "sahabi@gmail.com";
      author = "sahabi";
      homepage = "https://github.com/sahabi/fee-estimate#readme";
      url = "";
      synopsis = "Short description of your package";
      description = "Please see the README on Github at <https://github.com/githubuser/fee-estimate#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.QuickCheck) ]; };
      exes = {
        "fee-estimate-exe" = {
          depends = [ (hsPkgs.base) (hsPkgs.QuickCheck) (hsPkgs.fee-estimate) ];
          };
        };
      tests = {
        "fee-estimate-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.QuickCheck) (hsPkgs.fee-estimate) ];
          };
        };
      };
    }