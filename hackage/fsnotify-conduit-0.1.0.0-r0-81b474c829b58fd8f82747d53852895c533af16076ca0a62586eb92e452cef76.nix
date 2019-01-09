{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fsnotify-conduit"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 FP Complete";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/fsnotify-conduit#readme";
      url = "";
      synopsis = "Get filesystem notifications as a stream of events";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.conduit)
            (hsPkgs.directory)
            (hsPkgs.filepath)
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