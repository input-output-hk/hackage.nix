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
      specVersion = "1.2";
      identifier = {
        name = "wedding-announcement";
        version = "1.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "me@mornfall.net";
      author = "Petr Rockai";
      homepage = "http://web.mornfall.net";
      url = "";
      synopsis = "a wedding announcement";
      description = "Feel free to update this package with your own announcement.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "wedding-announcement" = {
          depends = [ (hsPkgs.base) ];
        };
      };
    };
  }