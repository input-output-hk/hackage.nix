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
      specVersion = "1.12";
      identifier = {
        name = "persistent-qq";
        version = "2.9.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "https://github.com/yesodweb/persistent#readme";
      url = "";
      synopsis = "Provides a quasi-quoter for raw SQL for persistent";
      description = "Please see README and API docs at <http://www.stackage.org/package/persistent>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.mtl)
          (hsPkgs.persistent)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
        ];
      };
    };
  }