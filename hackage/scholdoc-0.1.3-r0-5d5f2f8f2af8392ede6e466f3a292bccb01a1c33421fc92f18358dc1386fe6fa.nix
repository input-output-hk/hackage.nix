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
    flags = {
      embed_data_files = false;
      tryscholdoc = false;
      https = true;
      make-pandoc-man-pages = false;
      network-uri = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "scholdoc"; version = "0.1.3"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2014 Tim T.Y. Lin, (c) 2006-2014 John MacFarlane";
      maintainer = "Tim T.Y. Lin <timtylin@gmail.com>";
      author = "Tim T.Y. Lin <timtylin@gmail.com>";
      homepage = "http://scholarlymarkdown.com";
      url = "";
      synopsis = "Converts ScholarlyMarkdown documents to HTML5/LaTeX/Docx format";
      description = "Scholdoc is a command-line utility that converts\nScholarlyMarkdown documents into the HTML5, LaTeX, and Docx\n(OOML) formats. It is intended to facilitate academic writing\nin a cross-platform, semantic-aware, plaintext format that can\nbe quickly used in modern publishing pipelines.\n\nScholdoc is implemented as (rather crude) fork of @pandoc@,\nand the command-line executable mostly retains the same user\ninterface (including the custom template and filter system).\nIt essentially understands a new input format\n@markdown_scholarly@ (implemented in the markdown reader a\nsuperset of @markdown_pandoc@ features), and limits itself to\nHTML5, LaTeX, and Docx output.\n\nUnfortunately, currently Scholdoc occupies the @Pandoc@\nnamespace. This is done to avoid problems when merging in\nfixes and changes from the core Pandoc project, and to\npotentially allow enhancements from Scholdoc to be contributed\nback to Pandoc. It is thus not recommended to use the library\ndirectly, as Scholdoc is not backwards-compatible with Pandoc,\nto avoid confusion.\n\nFor descriptions of the original @pandoc@ package, please\nvisit <http://hackage.haskell.org/package/pandoc>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."scholdoc-texmath" or (buildDepError "scholdoc-texmath"))
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
          (hsPkgs."scholdoc-types" or (buildDepError "scholdoc-types"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."highlighting-kate" or (buildDepError "highlighting-kate"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."hslua" or (buildDepError "hslua"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."SHA" or (buildDepError "SHA"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          ] ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."network" or (buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or (buildDepError "network"))
            ])) ++ (pkgs.lib).optionals (flags.https) [
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          ];
        };
      exes = {
        "scholdoc" = {
          depends = [
            (hsPkgs."scholdoc" or (buildDepError "scholdoc"))
            (hsPkgs."scholdoc-types" or (buildDepError "scholdoc-types"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."highlighting-kate" or (buildDepError "highlighting-kate"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ] ++ (if flags.network-uri
            then [ (hsPkgs."network-uri" or (buildDepError "network-uri")) ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          };
        "tryscholdoc" = {
          depends = (pkgs.lib).optionals (flags.tryscholdoc) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."scholdoc" or (buildDepError "scholdoc"))
            (hsPkgs."highlighting-kate" or (buildDepError "highlighting-kate"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            ];
          };
        };
      tests = {
        "test-scholdoc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."scholdoc" or (buildDepError "scholdoc"))
            (hsPkgs."scholdoc-types" or (buildDepError "scholdoc-types"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."executable-path" or (buildDepError "executable-path"))
            ];
          };
        };
      benchmarks = {
        "benchmark-scholdoc" = {
          depends = [
            (hsPkgs."scholdoc" or (buildDepError "scholdoc"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }