{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "forest-fire"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Paul";
      maintainer = "paul.david@redbubble.com";
      author = "Paul";
      homepage = "https://github.com/toothbrush/forest-fire#readme";
      url = "";
      synopsis = "Recursively delete CloudFormation stacks and their dependants";
      description = "This simple tool will repeatedly query CloudFormation\nstacks for outputs, and see if any other stacks are\nimporting those.  This is to make it easier to tear down\nCFn stacks which have many other stacks depending on\ntheir outputs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.text)
          ];
        };
      exes = {
        "forest-fire" = {
          depends = [ (hsPkgs.base) (hsPkgs.cli) (hsPkgs.forest-fire) ];
          };
        };
      tests = {
        "forest-fire-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.forest-fire)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      };
    }