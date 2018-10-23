{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pipes-csv";
        version = "1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "will@casarin.me";
      author = "William Casarin";
      homepage = "";
      url = "";
      synopsis = "Fast, streaming csv parser";
      description = "`pipes-csv` is a streaming csv parser built on top of `cassava` and `pipes`";
      buildType = "Simple";
    };
    components = {
      "pipes-csv" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.pipes)
        ];
      };
    };
  }