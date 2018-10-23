{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "debian";
        version = "1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
      author = "Jeremy Shaw";
      homepage = "";
      url = "";
      synopsis = "A set of modules for working with debian control files and packages";
      description = "Modules for parsing debian control files, resolving\ndepedencies, comparing version numbers, and other useful stuff.";
      buildType = "Custom";
    };
    components = {
      "debian" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.unix)
          (hsPkgs.regex-compat)
        ];
      };
    };
  }