{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "trans-fx-io"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Automattic, Inc";
      maintainer = "nbloomf@gmail.com";
      author = "Nathan Bloomfield";
      homepage = "https://github.com/nbloomf/trans-fx#readme";
      url = "";
      synopsis = "Monadic effect framework";
      description = "Please see the README on GitHub at <https://github.com/nbloomf/trans-fx#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.trans-fx-core)
          (hsPkgs.trans-fx-data)
          (hsPkgs.time)
          ];
        };
      tests = {
        "trans-fx-io-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.trans-fx-core)
            (hsPkgs.trans-fx-io)
            (hsPkgs.time)
            ];
          };
        };
      };
    }