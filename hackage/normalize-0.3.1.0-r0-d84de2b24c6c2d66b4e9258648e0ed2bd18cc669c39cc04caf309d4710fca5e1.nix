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
      specVersion = "1.10";
      identifier = {
        name = "normalize";
        version = "0.3.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright: (c) 2018 Gregory W. Schwartz";
      maintainer = "gsch@pennmedicine.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/normalize#readme";
      url = "";
      synopsis = "Normalize data using a variety of methods.";
      description = "Normalize data using a variety of methods. For use with csv files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cassava)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.sparse-linear-algebra)
          (hsPkgs.statistics)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "normalize" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.normalize)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.containers)
            (hsPkgs.optparse-generic)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }