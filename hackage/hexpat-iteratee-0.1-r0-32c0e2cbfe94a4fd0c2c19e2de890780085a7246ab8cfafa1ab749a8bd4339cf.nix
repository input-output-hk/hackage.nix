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
        name = "hexpat-iteratee";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Stephen Blackheath <http://blacksapphire.com/antispam/>";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath (blackh)";
      homepage = "http://haskell.org/haskellwiki/Hexpat/";
      url = "";
      synopsis = "chunked XML parsing using iteratees";
      description = "Provides chunked XML parsing using iteratees";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
          (hsPkgs.containers)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.iteratee)
          (hsPkgs.hexpat)
          (hsPkgs.List)
        ];
      };
    };
  }