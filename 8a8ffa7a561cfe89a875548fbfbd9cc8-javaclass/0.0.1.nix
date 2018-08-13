{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "javaclass";
        version = "0.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (C) 2016 NICTA Limited";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/NICTA/javaclass";
      url = "";
      synopsis = "Java class files";
      description = "<<http://i.imgur.com/Ns5hntl.jpg>>\n\nJava class files\nhttps://docs.oracle.com/javase/specs/jvms/se7/html/jvms-4.html";
      buildType = "Custom";
    };
    components = {
      "javaclass" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.lens)
          (hsPkgs.bytestring)
          (hsPkgs.tickle)
          (hsPkgs.tagged)
          (hsPkgs.greplicate)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }