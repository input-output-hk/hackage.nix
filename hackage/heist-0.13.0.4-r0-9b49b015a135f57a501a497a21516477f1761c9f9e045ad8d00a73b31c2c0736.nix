{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "heist";
        version = "0.13.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "snap@snapframework.com";
      author = "Doug Beardsley, Gregory Collins";
      homepage = "http://snapframework.com/";
      url = "";
      synopsis = "An Haskell template system supporting both HTML5 and XML.";
      description = "Heist is a powerful template system that supports both HTML5 and XML.\nSome of Heist's features are:\n\n* Designer-friendly HTML5 (or XML) syntax\n\n* Templates can be reloaded to make changes visible without recompiling\nyour Haskell code\n\n* Enforces near-perfect separation of business logic and view\n\n* Powerful abstraction primitives allowing you to eliminate repetition\n\n* Easy creation of domain-specific markup languages\n\n* Built-in support for including JSON and Markdown content in templates\n\n* Simple mechanism for designer-specified template caching\n\n* Optional merging of multiple \\<head\\> tags defined anywhere in the\ndocument";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.directory-tree)
          (hsPkgs.dlist)
          (hsPkgs.errors)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.xmlhtml)
        ];
      };
    };
  }