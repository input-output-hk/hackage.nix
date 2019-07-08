{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "extend-record-data-th"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Daishi Nakajima";
      maintainer = "nakaji.dayo@gmail.com";
      author = "Daishi Nakajima";
      homepage = "https://github.com/nakaji-dayo/extend-record-data-th#readme";
      url = "";
      synopsis = "TH to define a new record data type that extends the existing record data type.";
      description = "Please see the README on GitHub at <https://github.com/nakaji-dayo/extend-record-data-th#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          ];
        };
      tests = {
        "extend-record-data-th-test" = {
          depends = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.extend-record-data-th)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            ];
          };
        };
      };
    }