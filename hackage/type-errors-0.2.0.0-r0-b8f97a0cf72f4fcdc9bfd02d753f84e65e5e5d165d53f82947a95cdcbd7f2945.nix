{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "type-errors"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/type-errors#readme";
      url = "";
      synopsis = "Tools for writing better type errors";
      description = "Please see the README on GitHub at <https://github.com/isovector/type-errors#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.first-class-families)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.th-abstraction)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.first-class-families)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.th-abstraction)
            (hsPkgs.type-errors)
            ];
          };
        };
      };
    }