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
      specVersion = "1.8";
      identifier = { name = "arxiv"; version = "0.0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) Tobias Schoofs, 2014";
      maintainer = "Tobias Schoofs <tobias dot schoofs at gmx dot net>";
      author = "Tobias Schoofs";
      homepage = "http://github.com/toschoo/Haskell-Libs";
      url = "";
      synopsis = "A client for the Arxiv API";
      description = "The arXiv is a repository of electronic preprints, known as e-prints,\nof scientific papers in the fields of mathematics, physics, astronomy,\ncomputer science, quantitative biology, statistics, and quantitative finance,\nwhich can be accessed online. In many fields of mathematics and physics,\nalmost all scientific papers are self-archived on the arXiv.\n\nThe arXiv features an API to ease access to e-prints.\nThis library provides a simple and easy-to-use Haskell binding\nfor the arXiv API.\n\nFor the full documentation of the arXiv API, please refer to\n<http://arxiv.org/help/api/index>.\n\nMore information on this haskell library,\nexamples and a test suite are available\non <https://github.com/toschoo/Haskell-Libs>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
        ];
        buildable = true;
      };
    };
  }