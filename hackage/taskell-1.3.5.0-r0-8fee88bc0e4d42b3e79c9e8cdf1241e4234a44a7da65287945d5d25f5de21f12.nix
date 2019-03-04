{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "taskell"; version = "1.3.5.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Mark Wales";
      maintainer = "mark@smallhadroncollider.com";
      author = "Mark Wales";
      homepage = "https://github.com/smallhadroncollider/taskell#readme";
      url = "";
      synopsis = "A command-line kanban board/task manager";
      description = "Please see the README on GitHub at <https://github.com/smallhadroncollider/taskell#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.brick)
          (hsPkgs.bytestring)
          (hsPkgs.classy-prelude)
          (hsPkgs.config-ini)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.file-embed)
          (hsPkgs.fold-debounce)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.vty)
          ];
        };
      exes = {
        "taskell" = {
          depends = [ (hsPkgs.base) (hsPkgs.classy-prelude) (hsPkgs.taskell) ];
          };
        };
      tests = {
        "taskell-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.classy-prelude)
            (hsPkgs.containers)
            (hsPkgs.file-embed)
            (hsPkgs.lens)
            (hsPkgs.taskell)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-expected-failure)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            ];
          };
        };
      };
    }