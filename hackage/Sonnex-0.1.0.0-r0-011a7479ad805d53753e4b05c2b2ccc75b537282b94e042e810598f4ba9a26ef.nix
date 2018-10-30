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
      specVersion = "1.10";
      identifier = {
        name = "Sonnex";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright © 2014 Frédéric BISSON";
      maintainer = "zigazou@free.fr";
      author = "Frédéric BISSON";
      homepage = "https://github.com/Zigazou/Sonnex";
      url = "";
      synopsis = "Sonnex is an alternative to Soundex for french language";
      description = "This package implements an alternative to the Soundex algorithms\nfor french language. It does so by approximating what the word\nshould sound in french. Since it is very basic, it has no other\ndependencies than base.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }