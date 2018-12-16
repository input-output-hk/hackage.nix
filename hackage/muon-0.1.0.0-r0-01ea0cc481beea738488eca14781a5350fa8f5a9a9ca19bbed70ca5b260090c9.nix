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
      specVersion = "1.8";
      identifier = {
        name = "muon";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Kaashif Hymabaccus";
      maintainer = "kaashifhymabaccus@gmail.com";
      author = "Kaashif Hymabaccus";
      homepage = "http://repos.kaashif.co.uk/darcs?r=muon;a=summary";
      url = "";
      synopsis = "Static blog generator";
      description = "Static blog generator";
      buildType = "Simple";
    };
    components = {
      exes = {
        "muon" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.HStringTemplate)
            (hsPkgs.directory)
            (hsPkgs.Glob)
            (hsPkgs.process)
            (hsPkgs.blaze-html)
            (hsPkgs.markdown)
          ];
        };
      };
    };
  }