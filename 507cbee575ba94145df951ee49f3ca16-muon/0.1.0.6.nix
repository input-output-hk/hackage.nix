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
      specVersion = "1.8";
      identifier = {
        name = "muon";
        version = "0.1.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Kaashif Hymabaccus";
      maintainer = "kaashifhymabaccus@gmail.com";
      author = "Kaashif Hymabaccus";
      homepage = "https://code.kaashif.co.uk/kaashif/muon";
      url = "";
      synopsis = "Static blog generator";
      description = "Program which takes blog posts and pages written in Markdown and\ncompiles them into a tree of HTML pages which can then be served\nby any web server.\n\nAs of now, Muon supports:\n\n* Generating a site from Markdown and HTML\n\n* Previewing a site locally using happstack-server\n\n* Uploading a site to a server using rsync\n";
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
            (hsPkgs.happstack-server)
          ];
        };
      };
    };
  }