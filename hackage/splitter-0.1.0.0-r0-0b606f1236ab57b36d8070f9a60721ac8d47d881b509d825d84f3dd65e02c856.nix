{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "splitter";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "(c) 2013 Robert Massaioli";
      maintainer = "robertmassaioli@gmail.com";
      author = "Robert Massaioli";
      homepage = "https://bitbucket.org/robertmassaioli/splitter";
      url = "";
      synopsis = "Use numerical ranges to split out certain lines from a file.";
      description = "Splitter lets you specify numerical ranges to split out certain lines\nfrom a file. This means that you can extract exactly what you want from a file and only\nthe sections that you want. Or, if you are only interested in a log file after a certain\npreamble then you can specify that range of files too.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "splitter" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.range)
          ];
        };
      };
    };
  }