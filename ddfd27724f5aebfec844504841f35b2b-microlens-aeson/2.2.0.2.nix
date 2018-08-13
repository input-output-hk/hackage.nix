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
        name = "microlens-aeson";
        version = "2.2.0.2";
      };
      license = "MIT";
      copyright = "Copyright (C) 2012 Paul Wilson, (C) 2013 Edward A. Kmett, (C) 2015 Colin Woodbury";
      maintainer = "Colin Woodbury <colingw@gmail.com>";
      author = "Colin Woodbury";
      homepage = "http://github.com/fosskers/microlens-aeson/";
      url = "";
      synopsis = "Law-abiding lenses for Aeson, using microlens.";
      description = "Law-abiding lenses for Aeson, using microlens.";
      buildType = "Simple";
    };
    components = {
      "microlens-aeson" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.microlens)
          (hsPkgs.bytestring)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.attoparsec)
          (hsPkgs.scientific)
        ];
      };
      tests = {
        "microlens-aeson-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.microlens)
            (hsPkgs.bytestring)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.microlens-aeson)
          ];
        };
      };
    };
  }