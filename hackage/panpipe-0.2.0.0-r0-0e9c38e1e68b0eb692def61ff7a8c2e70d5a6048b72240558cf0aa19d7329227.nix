{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "panpipe";
        version = "0.2.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "chriswarbo@gmail.com";
      author = "Chris Warburton";
      homepage = "http://chriswarbo.net/essays/activecode";
      url = "";
      synopsis = "Pandoc filter to execute code blocks";
      description = "Executes pandoc code blocks annotated with 'pipe'";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.process)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-types)
          (hsPkgs.temporary)
        ];
      };
      exes = {
        "panpipe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.panpipe)
          ];
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.panpipe)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.pandoc)
          ];
        };
      };
    };
  }