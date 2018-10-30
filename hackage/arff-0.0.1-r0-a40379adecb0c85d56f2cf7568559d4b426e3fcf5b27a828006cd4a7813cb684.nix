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
      specVersion = "1.2";
      identifier = {
        name = "arff";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Stefan Kersten 2008";
      maintainer = "Stefan Kersten";
      author = "Stefan Kersten";
      homepage = "http://code.haskell.org/~StefanKersten/code/arff";
      url = "";
      synopsis = "Generate Attribute-Relation File Format (ARFF) files";
      description = "Generate Attribute-Relation File Format (ARFF) files.\n\nARFF files are used by the WEKA data mining and machine\nlearning framework (<http://www.cs.waikato.ac.nz/~ml/weka/>)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.bytestring-show)
          (hsPkgs.old-locale)
          (hsPkgs.time)
        ];
      };
    };
  }