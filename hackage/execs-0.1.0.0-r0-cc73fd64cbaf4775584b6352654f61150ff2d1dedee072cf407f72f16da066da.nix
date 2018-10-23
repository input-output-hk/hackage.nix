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
        name = "execs";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2016 Sergey N. Yashin";
      maintainer = "yashin.sergey@gmail.com";
      author = "Sergey N. Yashin";
      homepage = "https://github.com/wapxmas/execs#readme";
      url = "";
      synopsis = "Tool to run stack exec prj-exe more easy";
      description = "Tool to run stack exec prj-exe more easy";
      buildType = "Simple";
    };
    components = {
      "execs" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "execs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.execs)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.process)
          ];
        };
      };
    };
  }