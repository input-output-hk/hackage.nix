{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { optimize = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "monoids";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/monoids";
      url = "";
      synopsis = "Deprecated: Use 'reducers'";
      description = "Deprecated: Use 'reducers'";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.fingertree)
          (hsPkgs.text)
          (hsPkgs.parallel)
        ];
      };
    };
  }