{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "freetype-simple"; version = "0.1.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "capsjac <capsjac at gmail dot com>";
      author = "capsjac <capsjac at gmail dot com>";
      homepage = "https://github.com/capsjac/freetype-simple";
      url = "";
      synopsis = "Single line text rendering for OpenGL ES";
      description = "Single line text rendering utility. See README.md for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.boundingboxes)
          (hsPkgs.bytestring)
          (hsPkgs.linear)
          (hsPkgs.freetype2)
          ];
        };
      };
    }