{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = {
        name = "CSPM-cspm";
        version = "0.8.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <Marc.Fontaine@gmx.de>";
      author = "Marc Fontaine <Marc.Fontaine@gmx.de>";
      homepage = "";
      url = "";
      synopsis = "cspm command line tool for analyzing CSPM specifications.";
      description = "cspm is a small command line tool for analyzing CSPM specifications.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.CSPM-Frontend)
          (hsPkgs.CSPM-CoreLanguage)
          (hsPkgs.CSPM-FiringRules)
          (hsPkgs.CSPM-Interpreter)
          (hsPkgs.CSPM-ToProlog)
          (hsPkgs.cmdargs)
          (hsPkgs.xml)
          (hsPkgs.containers)
          (hsPkgs.parallel)
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.syb)
          (hsPkgs.prettyclass)
          (hsPkgs.hslua)
        ];
      };
      exes = {
        "cspm" = {
          depends = [
            (hsPkgs.CSPM-Frontend)
            (hsPkgs.CSPM-CoreLanguage)
            (hsPkgs.CSPM-FiringRules)
            (hsPkgs.CSPM-Interpreter)
            (hsPkgs.CSPM-ToProlog)
            (hsPkgs.cmdargs)
            (hsPkgs.xml)
            (hsPkgs.containers)
            (hsPkgs.parallel)
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.syb)
            (hsPkgs.prettyclass)
            (hsPkgs.hslua)
          ];
        };
      };
    };
  }