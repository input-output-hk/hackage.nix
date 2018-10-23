{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "here";
        version = "1.2.7";
      };
      license = "BSD-3-Clause";
      copyright = "©2013 Taylor M. Hedberg, ©2014 Google Inc.";
      maintainer = "t@tmh.cc";
      author = "Taylor M. Hedberg";
      homepage = "https://github.com/tmhedberg/here";
      url = "";
      synopsis = "Here docs & interpolated strings via quasiquotation";
      description = "Here docs & interpolated strings via quasiquotation";
      buildType = "Simple";
    };
    components = {
      "here" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }