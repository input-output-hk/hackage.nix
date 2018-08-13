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
        name = "load-env";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Pat Brisbin <pbrisbin@gmail.com>";
      author = "Pat Brisbin <pbrisbin@gmail.com>";
      homepage = "https://github.com/pbrisbin/load-env#readme";
      url = "";
      synopsis = "Load environment variables from a file.";
      description = "Parse a .env file and load any declared variables into the current process's environment. This allows for a .env file to specify development-friendly defaults for configuration values normally set in the deployment environment.";
      buildType = "Simple";
    };
    components = {
      "load-env" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.load-env)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }