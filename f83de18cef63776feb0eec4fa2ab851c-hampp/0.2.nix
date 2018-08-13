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
      specVersion = "1.6";
      identifier = {
        name = "hampp";
        version = "0.2";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Haskell macro preprocessor";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hampp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.preprocessor-tools)
          ];
        };
      };
    };
  }