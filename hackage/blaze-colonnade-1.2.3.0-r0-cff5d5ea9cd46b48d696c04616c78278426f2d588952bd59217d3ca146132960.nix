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
      specVersion = "3.0";
      identifier = { name = "blaze-colonnade"; version = "1.2.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Andrew Martin";
      maintainer = "amartin@layer3com.com";
      author = "Andrew Martin";
      homepage = "https://github.com/byteverse/blaze-colonnade";
      url = "";
      synopsis = "blaze-html backend for colonnade";
      description = "This library provides a backend for using blaze-html with colonnade.\nIt generates standard HTML tables with `<table>`, `<tbody>`, `<thead>`,\n`<tr>`, `<th>`, and `<td>`.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."colonnade" or (errorHandler.buildDepError "colonnade"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }