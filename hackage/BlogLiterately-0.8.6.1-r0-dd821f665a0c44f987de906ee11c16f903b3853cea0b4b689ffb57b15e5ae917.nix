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
      identifier = { name = "BlogLiterately"; version = "0.8.6.1"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) Robert Greayer 2008-2010, Brent Yorgey 2012-2016";
      maintainer = "Brent Yorgey <byorgey@gmail.com>";
      author = "Robert Greayer <robgreayer@yahoo.com>, Brent Yorgey";
      homepage = "http://byorgey.wordpress.com/blogliterately/";
      url = "";
      synopsis = "A tool for posting Haskelly articles to blogs";
      description = "Write blog posts in Markdown format, then use BlogLiterately\nto do syntax highlighting, format ghci sessions, and upload\nto any blog supporting the metaWeblog API (such as Wordpress):\n<http://codex.wordpress.org/XML-RPC_MetaWeblog_API>.\n\nTo get started, use the provided executable\n@BlogLiterately@; see\n<http://byorgey.wordpress.com/blogliterately/> for\ncomplete documentation.\n\nTo make further customization possible, the internals\nof the executable are made available as a library.  In\nparticular, it is easy to create your own executable\nwhich adds extra custom transformations; see\n\"Text.BlogLiterately.Run\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bool-extras" or (buildDepError "bool-extras"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."HaXml" or (buildDepError "HaXml"))
          (hsPkgs."hscolour" or (buildDepError "hscolour"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."haxr" or (buildDepError "haxr"))
          (hsPkgs."pandoc" or (buildDepError "pandoc"))
          (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
          (hsPkgs."pandoc-citeproc" or (buildDepError "pandoc-citeproc"))
          (hsPkgs."highlighting-kate" or (buildDepError "highlighting-kate"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          ];
        };
      exes = {
        "BlogLiterately" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."BlogLiterately" or (buildDepError "BlogLiterately"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            ];
          };
        };
      };
    }