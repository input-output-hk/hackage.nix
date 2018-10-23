{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "silently";
        version = "1.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Trystan Spangler 2011";
      maintainer = "trystan.s@comcast.net";
      author = "Trystan Spangler";
      homepage = "https://github.com/trystan/silently";
      url = "https://github.com/trystan/silently";
      synopsis = "Prevent or capture writing to stdout and other handles.";
      description = "Prevent or capture writing to stdout and other handles.";
      buildType = "Simple";
    };
    components = {
      "silently" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.deepseq)
        ];
      };
      tests = {
        "spec-specific" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.silently)
            (hsPkgs.directory)
            (hsPkgs.nanospec)
          ];
        };
        "spec-generic" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.nanospec)
          ];
        };
      };
    };
  }