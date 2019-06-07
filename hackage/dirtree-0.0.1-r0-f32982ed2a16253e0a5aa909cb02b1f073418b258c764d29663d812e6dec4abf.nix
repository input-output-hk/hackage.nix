{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "dirtree"; version = "0.0.1"; };
      license = "MIT";
      copyright = "MIT";
      maintainer = "christian@kalhauge.dk";
      author = "Christian Gram Kalhauge";
      homepage = "https://github.com/kalhauge/dirtree#readme";
      url = "";
      synopsis = "A small library for working with directories.";
      description = "A small library for working with directories.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.lens)
          ];
        };
      tests = {
        "dirtree-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.dirtree)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.hspec-expectations-pretty-diff)
            (hsPkgs.lens)
            ];
          };
        };
      };
    }