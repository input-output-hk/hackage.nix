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
        name = "timestamp-subprocess-lines";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Eyal Lotem (2012)";
      maintainer = "eyal.lotem@gmail.com";
      author = "Eyal Lotem";
      homepage = "https://github.com/Peaker/timestamp-subprocess-lines";
      url = "";
      synopsis = "Run a command and timestamp its stdout/stderr lines";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Timestamp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.split)
            (hsPkgs.time)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.old-locale)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
      };
    };
  }