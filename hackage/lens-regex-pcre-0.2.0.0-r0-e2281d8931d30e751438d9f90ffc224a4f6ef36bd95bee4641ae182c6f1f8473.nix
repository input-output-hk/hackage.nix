{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "lens-regex-pcre"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Chris Penner";
      maintainer = "example@example.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/lens-regex-pcre#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/ChrisPenner/lens-regex-pcre#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.pcre-heavy)
          (hsPkgs.pcre-light)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          ];
        };
      tests = {
        "lens-regex-pcre-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.lens-regex-pcre)
            (hsPkgs.pcre-heavy)
            (hsPkgs.pcre-light)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            ];
          };
        };
      };
    }