{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cmark"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "(C) 2015 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "https://github.com/jgm/commonmark-hs";
      url = "";
      synopsis = "Haskell bindings to libcmark, CommonMark parser and renderer";
      description = "This package provides Haskell bindings for\n<http://github.com/jgm/cmark libcmark>, the reference parser for\n<http://commonmark.org CommonMark>. It includes sources for\n<http://github.com/jgm/cmark libcmark>, and does not require prior\ninstallation of the C library.\n\ncmark provides the following advantages over existing Markdown libraries\nfor Haskell:\n\n-   __Speed:__ Conversion speed is on par with the\n<https://hackage.haskell.org/package/sundown sundown> library: about\n30 times faster than\n<https://hackage.haskell.org/package/pandoc pandoc>, 24 times faster\nthan the Haskell\n<https://hackage.haskell.org/package/markdown markdown> package, 8\ntimes faster than\n<https://hackage.haskell.org/package/cheapskate cheapskate>.\n\n-   __Memory footprint:__ Memory footprint is on par with\n<https://hackage.haskell.org/package/sundown sundown>. On one\nsample, the library uses a fourth the memory that\n<https://hackage.haskell.org/package/markdown markdown> uses, and\nless than a tenth the memory that\n<https://hackage.haskell.org/package/pandoc pandoc> uses.\n\n-   __Robustness:__ cmark can handle whatever is thrown at it, without\nthe exponential blowups in parsing time one can sometimes get with\nother libraries.\n\n-   __Accuracy:__ cmark passes the CommonMark spec\\'s suite of over 500\nconformance tests.\n\n-   __Standardization:__ Since there is a spec and a comprehensive suite\nof tests, we can have a high degree of confidence that any two\nCommonMark implementations will behave the same. Thus, for example,\none could use this library for server-side rendering and\n<http://github.com/jgm/commonmark.js commonmark.js> for client-side\npreviewing.\n\n-   __Ease of installation:__ cmark has minimal dependencies.\n\ncmark does not provide Haskell versions of the whole\n<http://github.com/jgm/cmark libcmark> API, which is built around\nmutable @cmark_node@ objects. Instead, it provides two functions:\n\n-   @markdownToHtml@ uses <http://github.com/jgm/cmark libcmark>\\'s\nparser and renderer for a maximally efficient conversion of\nCommonMark to HTML (as a Text). (\\\"Smart punctuation\\\" and a few\nother options can be enabled.)\n\n-   @parseDocument@ uses <http://github.com/jgm/cmark libcmark>\\'s\nparser to produce a @Node@ tree that can be processed further using\nHaskell. One can transform the tree using generics, convert it to\nanother kind of structure (such as a Pandoc object that can be\nrendered using pandoc\\'s renderers) or render it using a custom\nrendering function.\n\n__A note on security:__ This library does not attempt to sanitize HTML\noutput. We recommend using\n<https://hackage.haskell.org/package/xss-sanitize xss-sanitize> to\nfilter the output.\n\n__A note on stability:__ There is a good chance the API will change\nsignificantly after this early release.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }