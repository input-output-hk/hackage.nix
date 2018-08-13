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
        name = "rei";
        version = "0.3.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Daniel";
      author = "Daniel";
      homepage = "https://github.com/kerkomen/rei";
      url = "";
      synopsis = "Process lists easily";
      description = "A tool for processing lists easily";
      buildType = "Simple";
    };
    components = {
      exes = {
        "rei" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.regex-posix)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.split)
          ];
        };
      };
    };
  }