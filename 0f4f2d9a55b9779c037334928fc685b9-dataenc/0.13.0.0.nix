{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "dataenc";
        version = "0.13.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Magnus Therning, 2007-2009";
      maintainer = "magnus@therning.org";
      author = "Magnus Therning";
      homepage = "http://www.haskell.org/haskellwiki/Library/Data_encoding";
      url = "";
      synopsis = "Data encoding library";
      description = "Data encoding library currently providing Base16, Base32,\nBase32Hex, Base64, Base64Url, Base85, Python string escaping,\nQuoted-Printable, URL encoding, uuencode, xxencode, and yEncoding.";
      buildType = "Simple";
    };
    components = {
      "dataenc" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }