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
        name = "clippings";
        version = "0.1.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Vikram Verma <me@vikramverma.com>";
      author = "Vikram Verma <me@vikramverma.com>";
      homepage = "";
      url = "";
      synopsis = "A parser/generator for Kindle-format clipping files (`My Clippings.txt`),";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.time)
          (hsPkgs.parsec)
          (hsPkgs.old-locale)
          (hsPkgs.strptime)
          (hsPkgs.data-default)
        ];
      };
      exes = {
        "clippings2tsv" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.clippings)
            (hsPkgs.cassava)
            (hsPkgs.parsec)
            (hsPkgs.bytestring)
            (hsPkgs.safecopy)
          ];
        };
      };
      tests = {
        "clippings-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.clippings)
            (hsPkgs.data-default)
            (hsPkgs.parsec)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.assertions)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }