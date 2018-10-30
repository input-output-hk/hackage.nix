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
      specVersion = "1.18";
      identifier = {
        name = "beam";
        version = "0.3.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "travis@athougies.net";
      author = "Travis Athougies";
      homepage = "http://travis.athougies.net/projects/beam.html";
      url = "";
      synopsis = "A type-safe SQL mapper for Haskell that doesn't use Template Haskell";
      description = "See the documentation on [my blog](http://travis.athougies.net/tags/beam.html) and on [GitHub](https://github.com/tathougies/beam/tree/master/Doc).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.tagged)
          (hsPkgs.pretty)
          (hsPkgs.HDBC)
          (hsPkgs.HDBC-sqlite3)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.containers)
          (hsPkgs.conduit)
          (hsPkgs.convertible)
          (hsPkgs.microlens)
          (hsPkgs.uniplate)
        ];
      };
    };
  }