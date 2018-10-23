{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haxl";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014 (C) 2014 Facebook, Inc.";
      maintainer = "The Haxl Team <haxl-team@fb.com>";
      author = "Facebook, Inc.";
      homepage = "https://github.com/facebook/Haxl";
      url = "";
      synopsis = "A Haskell library for efficient, concurrent,\nand concise data access.";
      description = "Haxl is a library and EDSL for efficient scheduling of concurrent data\naccesses with a concise applicative API.";
      buildType = "Simple";
    };
    components = {
      "haxl" = {
        depends  = [
          (hsPkgs.HUnit)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.pretty)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.haxl)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }