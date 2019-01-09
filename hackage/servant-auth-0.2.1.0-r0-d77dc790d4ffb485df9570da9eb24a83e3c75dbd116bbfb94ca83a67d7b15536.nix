{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-auth"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/plow-technologies/servant-auth#readme";
      url = "";
      synopsis = "Authentication combinators for servant";
      description = "This package provides an @Auth@ combinator for 'servant'. This combinator\nallows using different authentication schemes in a straightforward way,\nand possibly in conjunction with one another.\n\n'servant-auth' additionally provides concrete authentication schemes, such\nas Basic Access Authentication, JSON Web Tokens, and Cookies.\n\nFor more details on how to use this, see the <http://github.com/plow-technologies/servant-auth#readme README>.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
            (hsPkgs.yaml)
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.servant-auth)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }