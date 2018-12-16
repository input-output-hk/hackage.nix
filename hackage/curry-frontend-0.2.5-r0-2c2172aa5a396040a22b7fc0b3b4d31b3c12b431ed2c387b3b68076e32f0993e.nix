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
      specVersion = "1.6";
      identifier = {
        name = "curry-frontend";
        version = "0.2.5";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Holger Siegel";
      author = "Wolfgang Lux, Martin Engelke, Bernd Brassel, Holger Siegel";
      homepage = "http://curry-language.org";
      url = "";
      synopsis = "Compile the functional logic language Curry to several intermediate formats";
      description = "The Curry Frontend consists of the executable program \"cymake\".\nIt is used by various backends to compile Curry programs to\nan internal representation.\nThe code is a stripped-down version of an early version of\nthe Muenster Curry Compiler\n(<http://danae.uni-muenster.de/~lux/curry/>)";
      buildType = "Simple";
    };
    components = {
      "library" = {};
      exes = {
        "cymake" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.curry-base)
            (hsPkgs.mtl)
            (hsPkgs.old-time)
            (hsPkgs.containers)
            (hsPkgs.pretty)
          ];
        };
      };
    };
  }