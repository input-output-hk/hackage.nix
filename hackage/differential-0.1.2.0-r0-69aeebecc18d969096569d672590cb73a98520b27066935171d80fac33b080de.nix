{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "differential"; version = "0.1.2.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright: (c) 2019 Gregory W. Schwartz";
      maintainer = "gsch@pennmedicine.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/differential#readme";
      url = "";
      synopsis = "Finds out whether an entity comes from different distributions (statuses).";
      description = "Uses statistical tests to find whether an entity comes from one or two distributions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.foldl)
          (hsPkgs.inline-r)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.scientific)
          (hsPkgs.sparse-linear-algebra)
          (hsPkgs.statistics)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "differential" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.differential)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.containers)
            (hsPkgs.inline-r)
            (hsPkgs.optparse-generic)
            (hsPkgs.text)
            (hsPkgs.text-show)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }