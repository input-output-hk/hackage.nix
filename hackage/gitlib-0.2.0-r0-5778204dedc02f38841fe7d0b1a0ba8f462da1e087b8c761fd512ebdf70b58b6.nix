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
        name = "gitlib";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "";
      url = "";
      synopsis = "Higher-level types for working with hlibgit2";
      description = "Higher-level types for working with hlibgit2";
      buildType = "Simple";
    };
    components = {
      "gitlib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hlibgit2)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.stringable)
          (hsPkgs.lens)
        ];
      };
      tests = {
        "smoke" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gitlib)
            (hsPkgs.process)
            (hsPkgs.system-filepath)
            (hsPkgs.system-fileio)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.stringable)
            (hsPkgs.lens)
          ];
        };
      };
    };
  }