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
        name = "foobar";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/githubuser/foobar#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "foobar" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "foobar-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.foobar)
          ];
        };
      };
      tests = {
        "foobar-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.foobar)
          ];
        };
      };
    };
  }