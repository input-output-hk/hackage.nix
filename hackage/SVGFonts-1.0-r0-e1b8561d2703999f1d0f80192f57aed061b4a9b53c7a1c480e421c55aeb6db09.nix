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
      specVersion = "1.6";
      identifier = { name = "SVGFonts"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tillk.vogt@googlemail.com";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "Fonts from the SVG-Font format";
      description = "This format is easy to parse and was therefore chosen for a font library\ncompletely written in Haskell\n\nYou can convert your own font to SVG with <http://fontforge.sourceforge.net/> or use the included LinLibertine, Bitstream\n\nFeatures\n\n* A powerful functional interface, demonstrated with an example (Fonts.hs)\n\n* The generated outlines can be transformed in various ways, i.e.\nelimination of holes for triangulation, representation with triangles, extrusion\n\n* Color textures that are stored as files (font cache). Foreground and background color can be freely chosen.\n\n* Everything is stored in a simple SceneGraph: <http://hackage.haskell.org/package/collada-types>\n\n* Complete implementation of the features that fontforge produces (but not the complete SVG format):\n\n* Kerning (i.e. the two characters in \\\"VA\\\" have a shorter distance than in \\\"VV\\\")\n\n* Unicode, Ligatures\n\nXML speed issues can be solved by trimming the svg file to only those characters that are used (or maybe binary xml one day)\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."attoparsec-text" or (buildDepError "attoparsec-text"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."collada-types" or (buildDepError "collada-types"))
          (hsPkgs."collada-output" or (buildDepError "collada-output"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."GLUT" or (buildDepError "GLUT"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."SVGPath" or (buildDepError "SVGPath"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."tga" or (buildDepError "tga"))
          (hsPkgs."triangulation" or (buildDepError "triangulation"))
          (hsPkgs."tuple" or (buildDepError "tuple"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."xml" or (buildDepError "xml"))
          ];
        };
      exes = { "Fonts" = {}; };
      };
    }