let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "easyrender"; version = "0.1.1.3"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) 2012-2017 Peter Selinger";
      maintainer = "selinger@mathstat.dal.ca";
      author = "Peter Selinger";
      homepage = "http://www.mathstat.dal.ca/~selinger/easyrender/";
      url = "";
      synopsis = "User-friendly creation of EPS, PostScript, and PDF files";
      description = "This module provides efficient functions for rendering vector\ngraphics to a number of formats, including EPS, PostScript, and\nPDF. It provides an abstraction for multi-page documents, as well\nas a set of graphics primitives for page descriptions.\n\nThe graphics model is similar to that of the PostScript and PDF\nlanguages, but we only implement a subset of their functionality.\nCare has been taken that graphics rendering is done efficiently and\nas lazily as possible; documents are rendered \\\"on the fly\\\",\nwithout the need to store the whole document in memory.\n\nThe provided document description model consists of two separate\nlayers of abstraction:\n\n* /drawing/ is concerned with placing marks on a fixed surface, and\ntakes place in the 'Draw' monad;\n\n* /document structure/ is concerned with a sequence of pages, their\nbounding boxes, and other meta-data. It takes place in the\n'Document' monad.\n\nIn principle, the functionality provided by EasyRender is similar to\na subset of Cairo; however, EasyRender is lightweight and at least\nan order of magnitude faster.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.superdoc or (pkgs.buildPackages.superdoc or (buildToolDepError "superdoc")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }