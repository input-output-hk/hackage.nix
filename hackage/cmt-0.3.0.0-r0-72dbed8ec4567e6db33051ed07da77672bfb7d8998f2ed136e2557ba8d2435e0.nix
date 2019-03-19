{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "cmt"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Small Hadron Collider / Mark Wales";
      maintainer = "mark@smallhadroncollider.com";
      author = "Small Hadron Collider / Mark Wales";
      homepage = "https://github.com/smallhadroncollider/cmt#readme";
      url = "";
      synopsis = "Write consistent git commit messages";
      description = "Please see the README on GitHub at <https://github.com/smallhadroncollider/cmt#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.classy-prelude)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.terminal-size)
          (hsPkgs.text)
          ];
        };
      exes = {
        "cmt" = {
          depends = [ (hsPkgs.base) (hsPkgs.classy-prelude) (hsPkgs.cmt) ];
          };
        };
      tests = {
        "cmt-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.classy-prelude)
            (hsPkgs.cmt)
            (hsPkgs.file-embed)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-expected-failure)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      };
    }