{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "bktrees";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "josef.svenningsson@gmail.com";
      author = "Josef Svenningsson";
      homepage = "";
      url = "";
      synopsis = "A set data structure with approximate searching";
      description = "Burhard-Keller trees provide an implementation of sets\nwhich apart from the ordinary operations also has an\napproximate member search, allowing you to search for\nelements that are of a certain distance from the element\nyou are searching for.";
      buildType = "Custom";
    };
    components = {
      "bktrees" = {
        depends  = if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
          ]
          else [ (hsPkgs.base) ];
      };
    };
  }