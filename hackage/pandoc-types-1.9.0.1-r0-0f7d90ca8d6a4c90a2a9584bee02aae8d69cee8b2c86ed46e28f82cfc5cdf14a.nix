{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "pandoc-types"; version = "1.9.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2006-2010 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://johnmacfarlane.net/pandoc";
      url = "";
      synopsis = "Types for representing a structured document";
      description = "This package contains definitions for the 'Pandoc' data\nstructure, which is used by pandoc to represent\nstructured documents.  These definitions used to live\nin the pandoc package, but starting with pandoc 1.7, they\nhave been split off, so that other packages can use them\nwithout drawing in all of pandoc's dependencies, and\npandoc itself can depend on packages (like citeproc-hs)\nthat use them.\n\n@Text.Pandoc.Builder@ provides functions for building\nup @Pandoc@ structures programmatically.\n\n@Text.Pandoc.Generic@ provides generic functions for\nmanipulating Pandoc documents.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
        buildable = true;
        };
      };
    }