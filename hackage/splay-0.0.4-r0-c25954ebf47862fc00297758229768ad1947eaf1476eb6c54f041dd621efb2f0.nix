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
        name = "splay";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dramforever <dramforever@live.com>";
      author = "dramforever <dramforever@live.com>";
      homepage = "";
      url = "";
      synopsis = "Generic splay-based sequence representation";
      description = "/WARNING/: This package is /unstable/, do not use\nexcept for testing.\n\nA general sequence representation with arbitary\nannotations, for use as a base for implementations\nof various collection types.\n\nSome parts of the documentation are based on those\nin the @containers@ and @fingertree@ package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }