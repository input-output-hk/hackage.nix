{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "scotty-session";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2014 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "https://github.com/agrafix/scotty-session";
      url = "";
      synopsis = "Adding session functionality to scotty";
      description = "Adding PHP-like session management to Scotty.\n\n[Scotty] <http://hackage.haskell.org/package/scotty>";
      buildType = "Simple";
    };
    components = {
      "scotty-session" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.scotty)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.transformers)
          (hsPkgs.stm)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.http-types)
          (hsPkgs.wai)
          (hsPkgs.base64-bytestring)
          (hsPkgs.crypto-api)
        ];
      };
    };
  }