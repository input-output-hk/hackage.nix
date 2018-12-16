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
        name = "convert-annotation";
        version = "0.2.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright: (c) 2016 Gregory W. Schwartz";
      maintainer = "gsch@mail.med.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/convert-annotation#readme";
      url = "";
      synopsis = "Convert the annotation of a gene to another in a delimited file using a variety of different databases.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.wreq)
          (hsPkgs.HTTP)
          (hsPkgs.safe)
        ];
      };
      exes = {
        "convert-annotation" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.convert-annotation)
            (hsPkgs.optparse-generic)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.cassava)
            (hsPkgs.pipes)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-csv)
            (hsPkgs.lens)
          ];
        };
      };
    };
  }