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
      specVersion = "1.8";
      identifier = {
        name = "shakespeare";
        version = "0.10.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/templates";
      url = "";
      synopsis = "A toolkit for making compile-time interpolated templates";
      description = "Shakespeare is a template family for type-safe, efficient templates with simple variable interpolation . Shakespeare templates can be used inline with a quasi-quoter or in an external file. Shakespeare interpolates variables according to the type being inserted.\n\nNote there is no dependency on haskell-src-extras.\n\npackages that use this: shakespeare-js, shakespeare-css, shakespeare-interpolated, hamlet, and xml-hamlet\nPlease see the documentation at <http://docs.yesodweb.com/book/hamlet/> for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.parsec)
          (hsPkgs.text)
        ];
      };
    };
  }