{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      use-text-show = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "http-api-data";
        version = "0.3.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nickolay Kudasov <nickolay.kudasov@gmail.com>";
      author = "Nickolay Kudasov <nickolay.kudasov@gmail.com>";
      homepage = "http://github.com/fizruk/http-api-data";
      url = "";
      synopsis = "Converting to/from HTTP API data like URL pieces, headers and query parameters.";
      description = "This package defines typeclasses used for converting Haskell data types to and from HTTP API data.\n\nPlease see README.md";
      buildType = "Custom";
    };
    components = {
      "http-api-data" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-iso8601)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.uri-bytestring)
          (hsPkgs.uuid-types)
        ] ++ pkgs.lib.optional (_flags.use-text-show) (hsPkgs.text-show);
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.unordered-containers)
            (hsPkgs.http-api-data)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.uuid)
          ];
        };
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }