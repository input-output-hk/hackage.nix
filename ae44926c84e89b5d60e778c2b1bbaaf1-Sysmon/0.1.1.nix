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
      specVersion = "1.2";
      identifier = {
        name = "Sysmon";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "virukav@gmail.com";
      author = "Vitaliy Rukavishnikov";
      homepage = "http://github.com/rukav/Sysmon";
      url = "";
      synopsis = "Sybase 15 sysmon reports processor";
      description = "A library for processing Sysbase 15 sysmon reports.\nSysmon parses and stores the reports in the interval map.\nThe interval is defined by the report's time range.\nThe library main features are parsing sysmon reports, querying the\ntime interval, aggregating the multiple sysmon reports covered by the\nrequested time interval, providing some hints. The hints properties are\nconfigured.\nSee the Log.hs for the exported functions and examples/Sample.hs for the\nusage example.";
      buildType = "Simple";
    };
    components = {
      "Sysmon" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Glob)
          (hsPkgs.ConfigFile)
          (hsPkgs.datetime)
          (hsPkgs.fingertree)
          (hsPkgs.pretty)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.MissingH)
          (hsPkgs.vector)
          (hsPkgs.statistics)
        ];
      };
    };
  }