{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "salak"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Daniel YU";
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
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.heaps)
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
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.heaps)
            (hsPkgs.hspec)
            (hsPkgs.menshen)
            (hsPkgs.mtl)
            (hsPkgs.random)
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