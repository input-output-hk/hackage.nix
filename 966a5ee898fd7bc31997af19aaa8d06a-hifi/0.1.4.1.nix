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
        name = "hifi";
        version = "0.1.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Rickard Andersson";
      maintainer = "gonz@severnatazvezda.com";
      author = "Rickard Andersson";
      homepage = "https://gitlab.com/gonz/hifi";
      url = "";
      synopsis = "WiFi connection script generator";
      description = "A CLI tool generating scripts for connecting to WiFi, circumventing big WiFi management tools.";
      buildType = "Simple";
    };
    components = {
      "hifi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mustache)
          (hsPkgs.directory)
          (hsPkgs.text)
          (hsPkgs.process)
          (hsPkgs.parsec)
          (hsPkgs.filepath)
          (hsPkgs.unix)
        ];
      };
      exes = {
        "hifi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hifi)
            (hsPkgs.cmdargs)
          ];
        };
      };
      tests = {
        "hifi-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hifi)
          ];
        };
      };
    };
  }