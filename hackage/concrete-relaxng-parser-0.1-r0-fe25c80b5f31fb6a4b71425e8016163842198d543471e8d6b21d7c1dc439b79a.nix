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
      specVersion = "1.10";
      identifier = { name = "concrete-relaxng-parser"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (C) Stilo International plc, 2012";
      maintainer = "mblazevic@stilo.com";
      author = "Mario Blazevic";
      homepage = "";
      url = "";
      synopsis = "A parser driven by a standard RELAX NG schema with concrete syntax extensions.";
      description = "This package exports a parser executable named @parse-concrete@. The executable takes two arguments, the target RELAX\nNG schema filename and the input filename. The input must be well-formed XML. The output of the parser is either an\nerror or XML conforming to the schema.\n\nIf the input XML already conforms to the target schema, the parser acts as an ordinary RELAX NG validator. If not, it\nattempts to insert the missing element tags and to parse the text nodes within the input XML into XML elements. The\ntarget schema can be enriched by concrete syntax extensions, syntactically compatible with standard RELAX NG, to drive\nthe parsing process.\n\nThe included sample RELAX NG schema @xhtml-concrete.rng@ is an extension of the regular must be used together with\nJames Clark's modularized RELAX NG schema for XHTML, which can be downloaded from\n<http://www.thaiopensource.com/relaxng/xhtml/>. Here is an example session:\n\n> \$ cat <<END >test.xhtml.short<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n> <html xmlns=\"http://www.w3.org/1999/xhtml\">\n> Title\n>\n> A paragraph may contain more than one line.\n> Use *four* (that was emphasized) hyphens to draw a horizontal line:\n>\n> ----\n>\n> Unnumbered lists are like\n> * item a\n> * item b\n>\n> Numbered lists are like\n> * item a\n> * item b\n> </html>\n> END\n> \$ parse-concrete xhtml-concrete.rng test.xhtml.short | tee test.xhtml\n> <?xml version=\"1.0\" encoding=\"UTF-8\"?>\n> <html xmlns=\"http://www.w3.org/1999/xhtml\"><head><title>\n> Title</title></head><body><p>A paragraph may contain more than one line.\n> Use <em>four</em> (that was emphasized) hyphens to draw a horizontal line:</p>\n> <hr/><p>Unnumbered lists are like</p><ul><li>item a</li><li>item b</li></ul><p\n> >Numbered lists are like</p><ul><li>item a</li><li>item b\n> </li></ul></body></html>\n> \$ parse-concrete xhtml-concrete.rng test.xhtml | diff test.xhtml -\n> \$";
      buildType = "Simple";
      };
    components = {
      exes = {
        "parse-concrete" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."hxt-relaxng" or (buildDepError "hxt-relaxng"))
            (hsPkgs."hxt-charproperties" or (buildDepError "hxt-charproperties"))
            (hsPkgs."hxt-tagsoup" or (buildDepError "hxt-tagsoup"))
            (hsPkgs."hxt-curl" or (buildDepError "hxt-curl"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }