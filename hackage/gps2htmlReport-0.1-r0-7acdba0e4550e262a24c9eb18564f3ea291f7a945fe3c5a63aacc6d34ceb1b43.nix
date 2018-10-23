{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "gps2htmlReport";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rob Stewart <robstewart57@googlemail.com>";
      author = "Rob Stewart <robstewart57@googlemail.com>";
      homepage = "https://github.com/robstewart57/Gps2HtmlReport";
      url = "";
      synopsis = "GPS to HTML Summary Report";
      description = "Generate a HTML summary report of GPS tracks";
      buildType = "Simple";
    };
    components = {
      "gps2htmlReport" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.html)
          (hsPkgs.gps)
          (hsPkgs.time)
          (hsPkgs.cairo)
          (hsPkgs.Chart)
          (hsPkgs.random)
          (hsPkgs.data-accessor)
          (hsPkgs.colour)
          (hsPkgs.xsd)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.gd)
        ];
      };
      exes = {
        "gps2htmlReport" = {};
      };
    };
  }