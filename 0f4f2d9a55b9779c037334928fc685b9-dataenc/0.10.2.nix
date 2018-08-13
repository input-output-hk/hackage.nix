{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      large_base = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "dataenc";
        version = "0.10.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "Magnus Therning, 2007";
      maintainer = "magnus@therning.org";
      author = "Magnus Therning";
      homepage = "";
      url = "";
      synopsis = "Data encoding library";
      description = "Data encoding library currently providing Uuencode, Base64,\nBase64Url, Base32, Base32Hex, and Base16.";
      buildType = "Custom";
    };
    components = {
      "dataenc" = {
        depends  = if _flags.large_base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
      };
    };
  }