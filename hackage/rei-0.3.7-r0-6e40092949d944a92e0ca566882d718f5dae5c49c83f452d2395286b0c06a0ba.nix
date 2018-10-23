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
        name = "rei";
        version = "0.3.7";
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
            (hsPkgs.regex-tdfa)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.split)
          ];
        };
      };
    };
  }