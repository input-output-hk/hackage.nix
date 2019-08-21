{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "salak"; version = "0.3.4.1"; };
      license = "MIT";
      copyright = "2019 Daniel YU";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/salak#readme";
      url = "";
      synopsis = "Configuration (re)Loader and Parser.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.heaps)
          (hsPkgs.megaparsec)
          (hsPkgs.menshen)
          (hsPkgs.mtl)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unliftio-core)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "salak-spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.dlist)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.heaps)
            (hsPkgs.hspec)
            (hsPkgs.megaparsec)
            (hsPkgs.menshen)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio-core)
            (hsPkgs.unordered-containers)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      benchmarks = {
        "salak-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.dlist)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.heaps)
            (hsPkgs.megaparsec)
            (hsPkgs.menshen)
            (hsPkgs.mtl)
            (hsPkgs.salak)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio-core)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }