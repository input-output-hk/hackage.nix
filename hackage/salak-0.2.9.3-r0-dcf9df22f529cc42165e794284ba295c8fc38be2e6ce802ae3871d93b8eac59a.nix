{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "salak"; version = "0.2.9.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Daniel YU";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/salak#readme";
      url = "";
      synopsis = "Configuration Loader";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.menshen)
          (hsPkgs.mtl)
          (hsPkgs.pqueue)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unliftio-core)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.menshen)
            (hsPkgs.mtl)
            (hsPkgs.pqueue)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio-core)
            ];
          };
        };
      };
    }