{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "stringsearch";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bos@serpentine.com";
      author = "Daniel Fischer, Chris Kuklewicz";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Fast search of ByteStrings";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
          ]
          else [ (hsPkgs.base) ];
      };
    };
  }