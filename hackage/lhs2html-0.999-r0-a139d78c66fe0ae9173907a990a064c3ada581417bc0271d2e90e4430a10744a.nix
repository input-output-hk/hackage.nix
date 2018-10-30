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
        name = "lhs2html";
        version = "0.999";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "julian.fleischer@warhog.net";
      author = "Julian Fleischer";
      homepage = "";
      url = "";
      synopsis = "Compile lhs in bird style to md, html, hs.";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lhs2html" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.nicify)
          ];
        };
      };
    };
  }