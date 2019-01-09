{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pansite"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Richard Cook";
      maintainer = "rcook@rcook.org";
      author = "Richard Cook";
      homepage = "https://github.com/rcook/pansite#readme";
      url = "";
      synopsis = "Pansite: a simple web site management tool";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.yaml)
          ];
        };
      exes = {
        "pansite-app" = {
          depends = [
            (hsPkgs.MissingH)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.http-types)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.pansite)
            (hsPkgs.shake)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.vcs-revision)
            (hsPkgs.wai)
            (hsPkgs.wai-logger)
            (hsPkgs.warp)
            ];
          };
        };
      tests = {
        "pansite-doctest" = {
          depends = [ (hsPkgs.Glob) (hsPkgs.base) (hsPkgs.doctest) ];
          };
        "pansite-spec" = {
          depends = [ (hsPkgs.base) (hsPkgs.hspec) (hsPkgs.pansite) ];
          };
        };
      };
    }