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
      specVersion = "1.8";
      identifier = { name = "BlogLiterately"; version = "0.5"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) Robert Greayer 2008-2010, Brent Yorgey 2012";
      maintainer = "Brent Yorgey <byorgey@cis.upenn.edu>";
      author = "Robert Greayer <robgreayer@yahoo.com>";
      homepage = "http://byorgey.wordpress.com/blogliterately/";
      url = "";
      synopsis = "A tool for posting Haskelly articles to blogs";
      description = "Write blog posts in Markdown format, then use BlogLiterately\nto do syntax highlighting, format ghci sessions, and upload\nto any blog supporting the metaWeblog API (such as Wordpress).\n\nTo get started, use the provided executable\n@BlogLiterately@; see\n<http://byorgey.wordpress.com/blogliterately/> for\ncomplete documentation.\n\nTo make further customization possible, the internals\nof the executable are made available as a library.  In\nparticular, it is easy to create your own executable\nwhich adds extra custom transformations; see\n\"Text.BlogLiterately.Run\".\n\nNote that BlogLiterately depends on blaze-html-0.5.\nPandoc 1.9.3 and later can depend on either\nblaze-html-0.4 or blaze-html-0.5, but the latter only\nin case the blaze_html_0_5 flag is set.  If pandoc is\ninstalled as a dependency of BlogLiterately,\neverything should work out fine, since cabal's\nconstraint solver will figure out to set that flag.\nBut if pandoc is already installed against\nblaze-html-0.4 you may need to reinstall it with the\nblaze_html_0_5 flag explicitly set.";
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
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."HaXml" or (buildDepError "HaXml"))
          (hsPkgs."hscolour" or (buildDepError "hscolour"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."haxr" or (buildDepError "haxr"))
          (hsPkgs."pandoc" or (buildDepError "pandoc"))
          ];
        };
      exes = {
        "BlogLiterately" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."BlogLiterately" or (buildDepError "BlogLiterately"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          };
        };
      };
    }