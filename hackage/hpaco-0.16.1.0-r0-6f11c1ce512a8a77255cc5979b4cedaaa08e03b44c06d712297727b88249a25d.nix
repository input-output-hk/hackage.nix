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
      specVersion = "1.8";
      identifier = {
        name = "hpaco";
        version = "0.16.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "https://bitbucket.org/tdammers/hpaco";
      url = "";
      synopsis = "Modular template compiler";
      description = "CLI front-end to the hpaco-lib library. Compiles Paco\ntemplate source code to JavaScript or PHP, or interprets\nit directly.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hpaco" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.cmdargs)
            (hsPkgs.hpaco-lib)
            (hsPkgs.strict)
          ];
        };
      };
    };
  }