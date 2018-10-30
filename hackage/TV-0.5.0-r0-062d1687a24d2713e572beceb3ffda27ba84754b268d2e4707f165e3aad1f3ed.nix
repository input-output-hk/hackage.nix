{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "TV";
        version = "0.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2013 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/TV";
      url = "";
      synopsis = "Tangible Values -- composable interfaces";
      description = "TV is a library for composing /tangible values/ (\\\"TVs\\\"), i.e., values\nthat carry along external interfaces.  Values and interfaces are\n/combined and separable/, which makes TVs ready to use and to reuse.\n\nTry out the examples in @src\\/Examples.hs@.\n\nFor more information, including examples, please see the project wiki\npage <http://haskell.org/haskellwiki/TV>\n\n&#169; 2006-2013 by Conal Elliott; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.DeepArrow)
          (hsPkgs.TypeCompose)
        ];
      };
    };
  }