{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      previewserver = true;
      watchserver = true;
      checkexternal = true;
      buildwebsite = false;
      usepandoc = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "hakyll"; version = "4.12.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "http://jaspervdj.be/hakyll";
      url = "";
      synopsis = "A static website compiler library";
      description = "Hakyll is a static website compiler library. It provides you with the tools to\ncreate a simple or advanced static website using a Haskell DSL and formats\nsuch as markdown or RST. You can find more information, including a tutorial,\non the website:\n\n* <http://jaspervdj.be/hakyll>\n\nIf you seek assistance, there's:\n\n* A google group: <http://groups.google.com/group/hakyll>\n\n* An IRC channel, @#hakyll@ on freenode\n\nAdditionally, there's the Haddock documentation in the different modules,\nmeant as a reference.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."lrucache" or ((hsPkgs.pkgs-errors).buildDepError "lrucache"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."time-locale-compat" or ((hsPkgs.pkgs-errors).buildDepError "time-locale-compat"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
          ] ++ (pkgs.lib).optionals (flags.previewserver) [
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          (hsPkgs."wai-app-static" or ((hsPkgs.pkgs-errors).buildDepError "wai-app-static"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."fsnotify" or ((hsPkgs.pkgs-errors).buildDepError "fsnotify"))
          ]) ++ (pkgs.lib).optional (flags.watchserver) (hsPkgs."fsnotify" or ((hsPkgs.pkgs-errors).buildDepError "fsnotify"))) ++ (pkgs.lib).optionals (flags.checkexternal) [
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          ]) ++ (pkgs.lib).optionals (flags.usepandoc) [
          (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
          (hsPkgs."pandoc-citeproc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-citeproc"))
          ];
        buildable = true;
        };
      exes = {
        "hakyll-init" = {
          depends = [
            (hsPkgs."hakyll" or ((hsPkgs.pkgs-errors).buildDepError "hakyll"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        "hakyll-website" = {
          depends = [
            (hsPkgs."hakyll" or ((hsPkgs.pkgs-errors).buildDepError "hakyll"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
            ];
          buildable = if flags.buildwebsite then true else false;
          };
        };
      tests = {
        "hakyll-tests" = {
          depends = [
            (hsPkgs."hakyll" or ((hsPkgs.pkgs-errors).buildDepError "hakyll"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }