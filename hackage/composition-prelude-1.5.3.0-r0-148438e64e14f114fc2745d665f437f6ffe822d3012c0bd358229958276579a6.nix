{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      development = false;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "composition-prelude";
        version = "1.5.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017-2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Higher-order function combinators";
      description = "Replacement for `composition` or `composition-extra`, exporting everything in one module.";
      buildType = "Simple";
    };
    components = {
      "composition-prelude" = {
        depends  = [ (hsPkgs.base) ];
        build-tools = [
          (hsPkgs.buildPackages.cpphs)
        ];
      };
    };
  }