{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "xml-hamlet"; version = "0.4.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Hamlet-style quasiquoter for XML content";
      description = "Hamlet-style quasiquoter for XML content";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.shakespeare)
          (hsPkgs.xml-conduit)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.parsec)
          (hsPkgs.containers)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.shakespeare)
            (hsPkgs.xml-conduit)
            (hsPkgs.text)
            (hsPkgs.template-haskell)
            (hsPkgs.parsec)
            (hsPkgs.xml-hamlet)
            (hsPkgs.containers)
            ];
          };
        };
      };
    }