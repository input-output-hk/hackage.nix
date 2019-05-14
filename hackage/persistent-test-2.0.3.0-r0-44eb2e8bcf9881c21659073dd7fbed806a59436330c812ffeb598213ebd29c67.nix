{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "persistent-test"; version = "2.0.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/persistent";
      url = "";
      synopsis = "Tests for Persistent";
      description = "Tests for Persistent. This is only for use in developing libraries that should conform to the persistent interface, not for users of the persistent suite of database libraries.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.persistent)
          (hsPkgs.persistent-template)
          (hsPkgs.aeson)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.hspec)
          (hsPkgs.hspec-expectations)
          (hsPkgs.HUnit)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.path-pieces)
          (hsPkgs.QuickCheck)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.random)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unliftio)
          (hsPkgs.unliftio-core)
          (hsPkgs.unordered-containers)
          ];
        };
      };
    }