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
      specVersion = "0";
      identifier = {
        name = "dephd";
        version = "0.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "";
      url = "";
      synopsis = "Analyze 'phred' output (.phd files)";
      description = "dephd - A simple tool for base calling and quality appraisal.\n\nReads files in phd-format (phred output), either specified individually,\nor in a directory (use the --dir option to read directories).\nThe Darcs repository is at <http://malde.org/~ketil/biohaskell/dephd>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "dephd" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bio)
            (hsPkgs.regex-compat)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }