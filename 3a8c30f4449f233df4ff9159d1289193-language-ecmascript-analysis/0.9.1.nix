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
        name = "language-ecmascript-analysis";
        version = "0.9.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2012 Brown University, (c) 2008-2010 Claudiu Saftoiu,\n(c) 2012-2015 Stevens Institute of Technology";
      maintainer = "Andrey Chudnov <oss@chudnov.com>";
      author = "Andrey Chudnov, Arjun Guha, Spiridon Aristides Eliopoulos,\nJoe Gibbs Politz, Claudiu Saftoiu";
      homepage = "http://github.com/jswebtools/language-ecmascript-analysis";
      url = "";
      synopsis = "JavaScript static analysis library.";
      description = "JavaScript static analysis library. Includes label set and lexical environment analyses. The package versions follow Semantic Versioning model (semver.org).";
      buildType = "Simple";
    };
    components = {
      "language-ecmascript-analysis" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.language-ecmascript)
          (hsPkgs.uniplate)
          (hsPkgs.parsec)
          (hsPkgs.containers)
        ];
      };
    };
  }