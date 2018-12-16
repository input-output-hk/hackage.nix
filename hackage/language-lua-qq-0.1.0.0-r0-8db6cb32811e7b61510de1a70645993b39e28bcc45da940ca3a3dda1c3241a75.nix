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
      specVersion = "1.10";
      identifier = {
        name = "language-lua-qq";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 (c) Hiromi ISHII";
      maintainer = "konn.jinro _at_ gmail.com";
      author = "Hiromi ISHII";
      homepage = "http://github.com/konn/language-lua-qq#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.language-lua)
          (hsPkgs.mtl)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
        ];
      };
      tests = {
        "language-lua-qq-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.language-lua-qq)
          ];
        };
      };
    };
  }