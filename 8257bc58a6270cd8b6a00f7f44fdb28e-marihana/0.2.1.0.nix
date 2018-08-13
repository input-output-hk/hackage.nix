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
        name = "marihana";
        version = "0.2.1.0";
      };
      license = "MIT";
      copyright = "2018 Akeno Suzukaze";
      maintainer = "nanisanumber+contact@gmail.com";
      author = "Akeno Suzukaze";
      homepage = "https://github.com/suzukeno/marihana#readme";
      url = "";
      synopsis = "Minimal tool to make your blog in Haskell";
      description = "Please see the README on Github at <https://github.com/suzukeno/marihana#readme>";
      buildType = "Simple";
    };
    components = {
      "marihana" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
        ];
      };
      exes = {
        "marihana" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.marihana)
            (hsPkgs.process)
          ];
        };
      };
      tests = {
        "marihana-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.marihana)
            (hsPkgs.process)
          ];
        };
      };
    };
  }