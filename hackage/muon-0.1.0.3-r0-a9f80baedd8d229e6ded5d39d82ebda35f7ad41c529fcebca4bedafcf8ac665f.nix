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
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Kaashif Hymabaccus";
      maintainer = "kaashifhymabaccus@gmail.com";
      author = "Kaashif Hymabaccus";
      homepage = "http://repos.kaashif.co.uk/darcs?r=muon;a=summary";
      url = "";
      synopsis = "Static blog generator";
      description = "Program which takes blog posts and pages written in Markdown and\ncompiles them into a tree of HTML pages which can then be served\nby any web server.\n\nMuon is similar in function to Hakyll <http://jaspervdj.be/hakyll/>\nbut has far fewer features (and dependencies) and is generally not\nready for use in production as of yet.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "muon" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.HStringTemplate)
            (hsPkgs.directory)
            (hsPkgs.Glob)
            (hsPkgs.process)
            (hsPkgs.blaze-html)
            (hsPkgs.markdown)
            (hsPkgs.ConfigFile)
            (hsPkgs.MissingH)
          ];
        };
      };
    };
  }