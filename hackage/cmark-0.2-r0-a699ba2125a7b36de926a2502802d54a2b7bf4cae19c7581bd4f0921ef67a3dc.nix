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
      specVersion = "1.14";
      identifier = { name = "cmark"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2015 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "https://github.com/jgm/commonmark-hs";
      url = "";
      synopsis = "Fast, accurate CommonMark (Markdown) parser and renderer";
      description = "This package provides Haskell bindings for\n<http://github.com/jgm/cmark libcmark>, the reference\nparser for <http://commonmark.org CommonMark>, a fully\nspecified variant of Markdown. It includes sources for\n<http://github.com/jgm/cmark libcmark> (version 0.18.1)\nand does not require prior installation of the C\nlibrary.\n\ncmark provides the following advantages over existing\nMarkdown libraries for Haskell:\n\n-   __Speed:__ Conversion speed is on par with the\n<https://hackage.haskell.org/package/sundown sundown>\nlibrary. We were unable to measure precisely\nagainst\n<https://hackage.haskell.org/package/sundown sundown>,\nwhich raised a malloc error when compiled into our\nbenchmark suite. Relative to other implementations:\ncmark was 82 times faster than\n<https://hackage.haskell.org/package/cheapskate cheapskate>,\n59 times faster than\n<https://hackage.haskell.org/package/markdown markdown>,\n105 times faster than\n<https://hackage.haskell.org/package/pandoc pandoc>,\nand 2.8 times faster than\n<https://hackage.haskell.org/package/discount discount>.\n\n-   __Memory footprint:__ Memory footprint is on par\nwith\n<https://hackage.haskell.org/package/sundown sundown>.\nOn one sample, the library uses a fourth the memory\nthat\n<https://hackage.haskell.org/package/markdown markdown>\nuses, and less than a tenth the memory that\n<https://hackage.haskell.org/package/pandoc pandoc>\nuses.\n\n-   __Robustness:__ cmark can handle whatever is thrown\nat it, without the exponential blowups in parsing\ntime one can sometimes get with other libraries.\n(The input @bench\\/full-sample.md@, for example,\ncauses both\n<https://hackage.haskell.org/package/pandoc pandoc>\nand\n<https://hackage.haskell.org/package/markdown markdown>\nto grind to a halt.)\n\n-   __Accuracy:__ cmark passes the CommonMark spec\\'s\nsuite of over 500 conformance tests.\n\n-   __Standardization:__ Since there is a spec and a\ncomprehensive suite of tests, we can have a high\ndegree of confidence that any two CommonMark\nimplementations will behave the same. Thus, for\nexample, one could use this library for server-side\nrendering and\n<http://github.com/jgm/commonmark.js commonmark.js>\nfor client-side previewing.\n\n-   __Ease of installation:__ cmark is portable and has\nminimal dependencies.\n\ncmark does not provide Haskell versions of the whole\n<http://github.com/jgm/cmark libcmark> API, which is\nbuilt around mutable @cmark_node@ objects. Instead, it\nprovides functions for converting CommonMark to HTML\n(and other formats), and a function for converting\nCommonMark to a @Node@ tree that can be processed\nfurther using Haskell.\n\n__A note on security:__ This library does not attempt\nto sanitize HTML output. We recommend using\n<https://hackage.haskell.org/package/xss-sanitize xss-sanitize>\nto filter the output.\n\n__A note on stability:__ There is a good chance the API\nwill change significantly after this early release.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"));
        };
      benchmarks = {
        "bench-cmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."cmark" or (buildDepError "cmark"))
            (hsPkgs."sundown" or (buildDepError "sundown"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."cheapskate" or (buildDepError "cheapskate"))
            (hsPkgs."markdown" or (buildDepError "markdown"))
            (hsPkgs."discount" or (buildDepError "discount"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            ];
          };
        };
      };
    }