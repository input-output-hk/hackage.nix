{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "microlens-aeson"; version = "2.3.0.4"; };
      license = "MIT";
      copyright = "Copyright (C) 2012 Paul Wilson, (C) 2013 Edward A. Kmett, (C) 2015 Colin Woodbury";
      maintainer = "Colin Woodbury <colin@fosskers.ca>";
      author = "Colin Woodbury";
      homepage = "http://github.com/fosskers/microlens-aeson/";
      url = "";
      synopsis = "Law-abiding lenses for Aeson, using microlens.";
      description = "Law-abiding lenses for Aeson, using microlens.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.microlens)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.attoparsec)
          (hsPkgs.scientific)
          ];
        };
      tests = {
        "microlens-aeson-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.microlens)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.microlens-aeson)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      };
    }