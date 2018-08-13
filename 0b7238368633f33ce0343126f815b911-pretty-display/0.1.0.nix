{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pretty-display";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/githubuser/pretty-display#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "pretty-display" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.pretty-show)
        ];
      };
      exes = {
        "pretty-display-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pretty-display)
            (hsPkgs.pretty-show)
            (hsPkgs.ansi-wl-pprint)
          ];
        };
      };
      tests = {
        "pretty-display-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pretty-display)
          ];
        };
      };
    };
  }