{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "unused"; version = "0.8.0.0"; };
      license = "MIT";
      copyright = "2016-2017 Josh Clayton";
      maintainer = "sayhi@joshuaclayton.me";
      author = "Josh Clayton";
      homepage = "https://github.com/joshuaclayton/unused#readme";
      url = "";
      synopsis = "A command line tool to identify unused code.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.regex-tdfa)
          (hsPkgs.terminal-progress-bar)
          (hsPkgs.ansi-terminal)
          (hsPkgs.unix)
          (hsPkgs.parallel-io)
          (hsPkgs.yaml)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.cassava)
          (hsPkgs.vector)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.megaparsec)
          (hsPkgs.inflections)
          (hsPkgs.file-embed)
          ];
        };
      exes = {
        "unused" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unused)
            (hsPkgs.optparse-applicative)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            ];
          };
        };
      tests = {
        "unused-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unused)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.text)
            ];
          };
        };
      };
    }