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
        name = "rex";
        version = "0.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "Michael Sloan 2011";
      maintainer = "Michael Sloan <mgsloan at gmail>";
      author = "Michael Sloan";
      homepage = "http://github.com/mgsloan/rex";
      url = "";
      synopsis = "A quasi-quoter for typeful results of regex captures.";
      description = "Provides a quasi-quoter for regular expressions which\nyields a tuple, of appropriate arity and types,\nrepresenting the results of the captures.  Allows the user\nto specify parsers for captures as inline Haskell.  Can\nalso be used to provide typeful pattern matching in\nfunction definitions and pattern matches.  Also, it\nprecompiles the regular expressions into a PCRE\ncompiled byte-array representation, at compile time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.pcre-light)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }