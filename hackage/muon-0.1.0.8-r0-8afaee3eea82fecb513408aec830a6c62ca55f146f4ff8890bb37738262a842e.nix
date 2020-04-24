{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "muon"; version = "0.1.0.8"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Kaashif Hymabaccus";
      maintainer = "kaashif@kaashif.co.uk";
      author = "Kaashif Hymabaccus";
      homepage = "http://github.com/kaashif-hymabaccus/muon";
      url = "";
      synopsis = "Static blog generator";
      description = "Program which takes blog posts and pages written in Markdown and\ncompiles them into a tree of HTML pages which can then be served\nby any web server.\n\nAs of now, Muon supports:\n\n* Generating a site from Markdown and HTML\n\n* Previewing a site locally using happstack-server\n\n* Uploading a site to a server using rsync\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "muon" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."HStringTemplate" or ((hsPkgs.pkgs-errors).buildDepError "HStringTemplate"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            (hsPkgs."markdown" or ((hsPkgs.pkgs-errors).buildDepError "markdown"))
            (hsPkgs."ConfigFile" or ((hsPkgs.pkgs-errors).buildDepError "ConfigFile"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."happstack-server" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server"))
            ];
          buildable = true;
          };
        };
      };
    }