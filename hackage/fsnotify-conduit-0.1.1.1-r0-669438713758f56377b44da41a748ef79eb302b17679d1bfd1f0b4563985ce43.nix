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
        name = "fsnotify-conduit";
        version = "0.1.1.1";
      };
      license = "MIT";
      copyright = "2016-2018 FP Complete";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/fsnotify-conduit#readme";
      url = "";
      synopsis = "Get filesystem notifications as a stream of events";
      description = "Please see the README and docs at <https://www.stackage.org/package/fsnotify-conduit>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.fsnotify)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "fsnotify-conduit-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.fsnotify)
            (hsPkgs.fsnotify-conduit)
            (hsPkgs.hspec)
            (hsPkgs.resourcet)
            (hsPkgs.temporary)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }